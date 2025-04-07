-- Vollständige Version der get_player_data-Funktion nach erfolgreicher Tabellenerweiterung

-- Bestehende Funktion löschen
DROP FUNCTION IF EXISTS get_player_data;

-- Vollständige Funktion erstellen, die alle Spalten der erweiterten Tabelle enthält
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

-- Bestätigung ausgeben
SELECT 'Die vollständige get_player_data-Funktion wurde erfolgreich aktiviert.' AS message;
