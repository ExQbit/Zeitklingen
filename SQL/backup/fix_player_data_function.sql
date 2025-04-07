-- Eine flexiblere Version der get_player_data Funktion, die unabhängig von der genauen Tabellenstruktur funktioniert

-- Zuerst die bestehende Funktion entfernen
DROP FUNCTION IF EXISTS get_player_data;

-- Neue Funktion erstellen, die nur auf Spalten zugreift, die garantiert existieren
CREATE OR REPLACE FUNCTION get_player_data(p_player_id TEXT)
RETURNS TABLE (
    id UUID,
    player_id TEXT,
    username TEXT,
    level INTEGER,
    experience INTEGER,
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
        last_login,
        created_at,
        updated_at
    FROM public.player_data 
    WHERE player_id = p_player_id;
$$;

-- Für den Fall, dass wir auch die Zeitzauber-spezifischen Spalten zur Tabelle hinzufügen möchten
-- Alternative: Spalten zur bestehenden Tabelle hinzufügen, wenn gewünscht
ALTER TABLE public.player_data 
ADD COLUMN IF NOT EXISTS time_energy INTEGER DEFAULT 100,
ADD COLUMN IF NOT EXISTS max_time_energy INTEGER DEFAULT 100,
ADD COLUMN IF NOT EXISTS time_energy_regen_rate FLOAT DEFAULT 1.0,
ADD COLUMN IF NOT EXISTS preferred_class TEXT,
ADD COLUMN IF NOT EXISTS games_played INTEGER DEFAULT 0,
ADD COLUMN IF NOT EXISTS games_won INTEGER DEFAULT 0,
ADD COLUMN IF NOT EXISTS total_cards_played INTEGER DEFAULT 0,
ADD COLUMN IF NOT EXISTS total_damage_dealt INTEGER DEFAULT 0,
ADD COLUMN IF NOT EXISTS total_time_stolen FLOAT DEFAULT 0,
ADD COLUMN IF NOT EXISTS total_time_protected FLOAT DEFAULT 0,
ADD COLUMN IF NOT EXISTS current_world_id UUID,
ADD COLUMN IF NOT EXISTS completed_worlds TEXT[] DEFAULT '{}';

-- Nach dem Hinzufügen der Spalten können wir eine vollständigere Funktion erstellen
-- Bitte nur ausführen, NACHDEM die obigen ALTER TABLE Befehle ausgeführt wurden!
-- Auskommentiert, damit es nicht versehentlich ausgeführt wird

/*
DROP FUNCTION IF EXISTS get_player_data;

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
*/
