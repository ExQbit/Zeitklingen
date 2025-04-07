-- Korrigierte Version der get_player_data Funktion

-- Löschen der bestehenden Funktion, um sie neu zu erstellen
DROP FUNCTION IF EXISTS get_player_data;

-- Korrigierte Version der Funktion erstellen
CREATE OR REPLACE FUNCTION get_player_data(p_player_id TEXT)
RETURNS TABLE (
    id UUID,
    player_id TEXT,
    username TEXT,
    level INTEGER,
    experience INTEGER,
    time_energy INTEGER,
    max_time_energy INTEGER,
    time_energy_regen_rate FLOAT,
    preferred_class TEXT,
    games_played INTEGER,
    games_won INTEGER,
    total_cards_played INTEGER,
    total_damage_dealt INTEGER,
    total_time_stolen FLOAT,
    total_time_protected FLOAT,
    current_world_id UUID,
    completed_worlds TEXT[],
    last_login TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE
) LANGUAGE sql SECURITY DEFINER AS $$
    SELECT 
        id,
        player_id,
        username,
        level,
        experience,
        time_energy,
        max_time_energy,
        time_energy_regen_rate,
        preferred_class,
        games_played,
        games_won,
        total_cards_played,
        total_damage_dealt,
        total_time_stolen,
        total_time_protected,
        current_world_id,
        completed_worlds,
        last_login,
        created_at,
        updated_at
    FROM public.player_data 
    WHERE player_id = p_player_id;
$$;

-- Überprüfen Sie auch die anderen Funktionen auf ähnliche Fehler
-- Zum Beispiel sollte die update_player_level Funktion korrigiert werden, falls nötig:

DROP FUNCTION IF EXISTS update_player_level;

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

-- Strategie für die Behebung der Fehler:
-- 1. Jede Funktion einzeln testen, um zu sehen, ob sie korrekt funktioniert
-- 2. Bei Funktionen mit Rückgabewerten vom Typ TABLE sollten wir sicherstellen, dass jede Spalte explizit benannt ist
-- 3. Die SELECT-Abfrage sollte die gleiche Anzahl und Reihenfolge der Spalten haben wie in der TABLE-Definition
