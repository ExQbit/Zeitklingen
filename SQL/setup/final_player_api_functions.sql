-- Finale Version der API-Funktionen für Spielerdaten

-- Funktion zum Erstellen oder Aktualisieren eines Spielers
CREATE OR REPLACE FUNCTION upsert_player(
    p_player_id TEXT,
    p_username TEXT,
    p_preferred_class TEXT DEFAULT NULL
) RETURNS UUID LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
    v_player_id UUID;
BEGIN
    INSERT INTO public.player_data (player_id, username, preferred_class)
    VALUES (p_player_id, p_username, p_preferred_class)
    ON CONFLICT (player_id) 
    DO UPDATE SET 
        username = p_username,
        preferred_class = COALESCE(p_preferred_class, player_data.preferred_class),
        updated_at = NOW()
    RETURNING id INTO v_player_id;
    
    RETURN v_player_id;
END;
$$;

-- Funktion zum Aktualisieren der Spielerstatistiken
CREATE OR REPLACE FUNCTION update_player_stats(
    p_player_id TEXT,
    p_games_played INTEGER DEFAULT 0,
    p_games_won INTEGER DEFAULT 0,
    p_cards_played INTEGER DEFAULT 0,
    p_damage_dealt INTEGER DEFAULT 0,
    p_time_stolen FLOAT DEFAULT 0,
    p_time_protected FLOAT DEFAULT 0
) RETURNS VOID LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
    UPDATE public.player_data
    SET 
        games_played = games_played + p_games_played,
        games_won = games_won + p_games_won,
        total_cards_played = total_cards_played + p_cards_played,
        total_damage_dealt = total_damage_dealt + p_damage_dealt,
        total_time_stolen = total_time_stolen + p_time_stolen,
        total_time_protected = total_time_protected + p_time_protected,
        updated_at = NOW()
    WHERE player_id = p_player_id;
END;
$$;

-- Funktion zum Abrufen aller Karten eines Spielers
CREATE OR REPLACE FUNCTION get_player_cards(p_player_id TEXT)
RETURNS TABLE (
    card_id UUID,
    name TEXT,
    type TEXT,
    element TEXT,
    evolution_level INTEGER,
    power INTEGER,
    health INTEGER,
    effect TEXT,
    flavor_text TEXT,
    quantity INTEGER,
    enhancement_level INTEGER,
    is_favorite BOOLEAN,
    times_played INTEGER
) LANGUAGE sql SECURITY DEFINER AS $$
    SELECT 
        c.id AS card_id, 
        c.name, 
        c.type, 
        c.element, 
        c.evolution_level, 
        c.power, 
        c.health, 
        c.effect, 
        c.flavor_text,
        pc.quantity,
        pc.enhancement_level,
        pc.is_favorite,
        pc.times_played
    FROM 
        public.player_cards pc
    JOIN 
        public.cards c ON pc.card_id = c.id
    WHERE 
        pc.player_id = p_player_id;
$$;

-- Funktion zum Hinzufügen oder Aktualisieren von Karten im Inventar eines Spielers
CREATE OR REPLACE FUNCTION update_player_card(
    p_player_id TEXT,
    p_card_id UUID,
    p_quantity_change INTEGER,
    p_is_favorite BOOLEAN DEFAULT NULL
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
    v_current_quantity INTEGER;
    v_new_quantity INTEGER;
BEGIN
    -- Prüfen, ob die Karte bereits im Inventar ist
    SELECT quantity INTO v_current_quantity
    FROM public.player_cards
    WHERE player_id = p_player_id AND card_id = p_card_id;
    
    IF v_current_quantity IS NULL THEN
        -- Karte noch nicht im Inventar, füge sie hinzu
        IF p_quantity_change <= 0 THEN
            -- Kann keine nicht vorhandene Karte entfernen
            RETURN FALSE;
        END IF;
        
        INSERT INTO public.player_cards (player_id, card_id, quantity, is_favorite)
        VALUES (p_player_id, p_card_id, p_quantity_change, COALESCE(p_is_favorite, FALSE));
        
        RETURN TRUE;
    ELSE
        -- Karte bereits im Inventar, aktualisiere sie
        v_new_quantity := v_current_quantity + p_quantity_change;
        
        IF v_new_quantity <= 0 THEN
            -- Entferne Karte aus Inventar wenn Anzahl 0 oder weniger
            DELETE FROM public.player_cards
            WHERE player_id = p_player_id AND card_id = p_card_id;
        ELSE
            -- Aktualisiere die Kartenmenge
            UPDATE public.player_cards
            SET 
                quantity = v_new_quantity,
                is_favorite = COALESCE(p_is_favorite, is_favorite),
                updated_at = NOW()
            WHERE player_id = p_player_id AND card_id = p_card_id;
        END IF;
        
        RETURN TRUE;
    END IF;
END;
$$;

-- Funktion zum Abrufen aller Materialien eines Spielers
CREATE OR REPLACE FUNCTION get_player_materials(p_player_id TEXT)
RETURNS TABLE (
    material_type TEXT,
    quantity INTEGER
) LANGUAGE sql SECURITY DEFINER AS $$
    SELECT material_type, quantity
    FROM public.player_materials
    WHERE player_id = p_player_id;
$$;

-- Funktion zum Aktualisieren der Materialien eines Spielers
CREATE OR REPLACE FUNCTION update_player_material(
    p_player_id TEXT,
    p_material_type TEXT,
    p_quantity_change INTEGER
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
    v_current_quantity INTEGER;
    v_new_quantity INTEGER;
BEGIN
    -- Prüfen, ob das Material bereits im Inventar ist
    SELECT quantity INTO v_current_quantity
    FROM public.player_materials
    WHERE player_id = p_player_id AND material_type = p_material_type;
    
    IF v_current_quantity IS NULL THEN
        -- Material noch nicht im Inventar, füge es hinzu
        IF p_quantity_change <= 0 THEN
            -- Kann kein nicht vorhandenes Material entfernen
            RETURN FALSE;
        END IF;
        
        INSERT INTO public.player_materials (player_id, material_type, quantity)
        VALUES (p_player_id, p_material_type, p_quantity_change);
        
        RETURN TRUE;
    ELSE
        -- Material bereits im Inventar, aktualisiere es
        v_new_quantity := v_current_quantity + p_quantity_change;
        
        IF v_new_quantity <= 0 THEN
            -- Entferne Material aus Inventar wenn Anzahl 0 oder weniger
            DELETE FROM public.player_materials
            WHERE player_id = p_player_id AND material_type = p_material_type;
        ELSE
            -- Aktualisiere die Materialmenge
            UPDATE public.player_materials
            SET 
                quantity = v_new_quantity,
                updated_at = NOW()
            WHERE player_id = p_player_id AND material_type = p_material_type;
        END IF;
        
        RETURN TRUE;
    END IF;
END;
$$;

-- Funktion zum Abrufen aller Decks eines Spielers
CREATE OR REPLACE FUNCTION get_player_decks(p_player_id TEXT)
RETURNS TABLE (
    id UUID,
    deck_name TEXT,
    deck_class TEXT,
    cards UUID[],
    is_active BOOLEAN,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE
) LANGUAGE sql SECURITY DEFINER AS $$
    SELECT id, deck_name, deck_class, cards, is_active, created_at, updated_at
    FROM public.player_decks
    WHERE player_id = p_player_id;
$$;

-- Funktion zum Erstellen eines neuen Decks
CREATE OR REPLACE FUNCTION create_player_deck(
    p_player_id TEXT,
    p_deck_name TEXT,
    p_deck_class TEXT,
    p_cards UUID[],
    p_is_active BOOLEAN DEFAULT FALSE
) RETURNS UUID LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
    v_deck_id UUID;
BEGIN
    -- Wenn das neue Deck aktiv sein soll, deaktiviere alle anderen Decks dieses Spielers
    IF p_is_active THEN
        UPDATE public.player_decks
        SET is_active = FALSE
        WHERE player_id = p_player_id;
    END IF;
    
    -- Erstelle das neue Deck
    INSERT INTO public.player_decks (player_id, deck_name, deck_class, cards, is_active)
    VALUES (p_player_id, p_deck_name, p_deck_class, p_cards, p_is_active)
    RETURNING id INTO v_deck_id;
    
    RETURN v_deck_id;
END;
$$;

-- Funktion zum Aktualisieren eines bestehenden Decks
CREATE OR REPLACE FUNCTION update_player_deck(
    p_deck_id UUID,
    p_deck_name TEXT DEFAULT NULL,
    p_cards UUID[] DEFAULT NULL,
    p_is_active BOOLEAN DEFAULT NULL
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
    v_player_id TEXT;
BEGIN
    -- Hole die player_id für das angegebene Deck
    SELECT player_id INTO v_player_id
    FROM public.player_decks
    WHERE id = p_deck_id;
    
    IF v_player_id IS NULL THEN
        -- Deck nicht gefunden
        RETURN FALSE;
    END IF;
    
    -- Wenn das Deck aktiv sein soll, deaktiviere alle anderen Decks dieses Spielers
    IF p_is_active THEN
        UPDATE public.player_decks
        SET is_active = FALSE
        WHERE player_id = v_player_id AND id != p_deck_id;
    END IF;
    
    -- Aktualisiere das Deck
    UPDATE public.player_decks
    SET 
        deck_name = COALESCE(p_deck_name, deck_name),
        cards = COALESCE(p_cards, cards),
        is_active = COALESCE(p_is_active, is_active),
        updated_at = NOW()
    WHERE id = p_deck_id;
    
    RETURN TRUE;
END;
$$;

-- Funktion zum Löschen eines Decks
CREATE OR REPLACE FUNCTION delete_player_deck(p_deck_id UUID)
RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
    DELETE FROM public.player_decks
    WHERE id = p_deck_id;
    
    RETURN FOUND;
END;
$$;

-- Funktion zum Abrufen von Achievements eines Spielers
CREATE OR REPLACE FUNCTION get_player_achievements(p_player_id TEXT)
RETURNS TABLE (
    achievement_name TEXT,
    progress INTEGER,
    completed BOOLEAN,
    achieved_at TIMESTAMP WITH TIME ZONE
) LANGUAGE sql SECURITY DEFINER AS $$
    SELECT achievement_name, progress, completed, achieved_at
    FROM public.player_achievements
    WHERE player_id = p_player_id;
$$;

-- Funktion zum Aktualisieren eines Achievement-Fortschritts
CREATE OR REPLACE FUNCTION update_achievement_progress(
    p_player_id TEXT,
    p_achievement_name TEXT,
    p_progress INTEGER,
    p_completed BOOLEAN DEFAULT NULL
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
    v_current_progress INTEGER;
    v_was_completed BOOLEAN;
    v_is_completed BOOLEAN;
BEGIN
    -- Prüfen, ob das Achievement bereits existiert
    SELECT progress, completed INTO v_current_progress, v_was_completed
    FROM public.player_achievements
    WHERE player_id = p_player_id AND achievement_name = p_achievement_name;
    
    -- Bestimme, ob das Achievement abgeschlossen ist
    v_is_completed := COALESCE(p_completed, (COALESCE(v_current_progress, 0) + p_progress) >= 100, v_was_completed);
    
    IF v_current_progress IS NULL THEN
        -- Achievement noch nicht vorhanden, erstelle es
        INSERT INTO public.player_achievements (player_id, achievement_name, progress, completed)
        VALUES (p_player_id, p_achievement_name, p_progress, v_is_completed);
        
        -- Wenn das Achievement abgeschlossen ist, setze das Datum
        IF v_is_completed THEN
            UPDATE public.player_achievements
            SET achieved_at = NOW(), progress = 100
            WHERE player_id = p_player_id AND achievement_name = p_achievement_name;
        END IF;
    ELSE
        -- Achievement bereits vorhanden, aktualisiere es
        UPDATE public.player_achievements
        SET 
            progress = LEAST(v_current_progress + p_progress, 100),
            completed = v_is_completed,
            achieved_at = CASE
                            WHEN v_is_completed AND NOT v_was_completed THEN NOW()
                            ELSE achieved_at
                          END
        WHERE player_id = p_player_id AND achievement_name = p_achievement_name;
    END IF;
    
    RETURN TRUE;
END;
$$;

-- Funktion zum Aktualisieren des Spielerlevels
CREATE OR REPLACE FUNCTION update_player_level(
    p_player_id TEXT,
    p_experience_gained INTEGER
) RETURNS TABLE (
    new_level INTEGER,
    level_up BOOLEAN,
    total_experience INTEGER
) LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
    v_current_level INTEGER;
    v_current_experience INTEGER;
    v_new_experience INTEGER;
    v_level_up BOOLEAN := FALSE;
    v_experience_for_next_level INTEGER;
BEGIN
    -- Aktuelle Werte abrufen
    SELECT level, experience INTO v_current_level, v_current_experience
    FROM public.player_data
    WHERE player_id = p_player_id;
    
    -- Neue Erfahrung berechnen
    v_new_experience := v_current_experience + p_experience_gained;
    
    -- Erfahrung für nächstes Level berechnen (einfache Formel: 1000 * aktuelles Level)
    v_experience_for_next_level := 1000 * v_current_level;
    
    -- Prüfen, ob Level-Up
    WHILE v_new_experience >= v_experience_for_next_level LOOP
        v_current_level := v_current_level + 1;
        v_level_up := TRUE;
        v_experience_for_next_level := 1000 * v_current_level;
    END LOOP;
    
    -- Spielerdaten aktualisieren
    UPDATE public.player_data
    SET 
        level = v_current_level,
        experience = v_new_experience,
        updated_at = NOW()
    WHERE player_id = p_player_id;
    
    -- Rückgabewerte
    new_level := v_current_level;
    level_up := v_level_up;
    total_experience := v_new_experience;
    
    RETURN NEXT;
END;
$$;

-- Funktion zum Zurücksetzen der Spielerenergie
CREATE OR REPLACE FUNCTION reset_player_energy(p_player_id TEXT)
RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
    UPDATE public.player_data
    SET 
        time_energy = max_time_energy,
        updated_at = NOW()
    WHERE player_id = p_player_id;
    
    RETURN FOUND;
END;
$$;

-- Funktion zum Aktualisieren der Zeitenergie eines Spielers
CREATE OR REPLACE FUNCTION update_player_energy(
    p_player_id TEXT,
    p_energy_change INTEGER
) RETURNS TABLE (
    new_energy INTEGER,
    max_energy INTEGER
) LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
    v_current_energy INTEGER;
    v_max_energy INTEGER;
    v_new_energy INTEGER;
BEGIN
    -- Aktuelle Werte abrufen
    SELECT time_energy, max_time_energy INTO v_current_energy, v_max_energy
    FROM public.player_data
    WHERE player_id = p_player_id;
    
    -- Neue Energie berechnen und zwischen 0 und max_energy begrenzen
    v_new_energy := GREATEST(0, LEAST(v_current_energy + p_energy_change, v_max_energy));
    
    -- Spielerdaten aktualisieren
    UPDATE public.player_data
    SET 
        time_energy = v_new_energy,
        updated_at = NOW()
    WHERE player_id = p_player_id;
    
    -- Rückgabewerte
    new_energy := v_new_energy;
    max_energy := v_max_energy;
    
    RETURN NEXT;
END;
$$;

-- Bestätigung ausgeben
SELECT 'Alle API-Funktionen für Spielerdaten wurden erfolgreich installiert.' AS message;
