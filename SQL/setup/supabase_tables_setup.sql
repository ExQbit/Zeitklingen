-- Zeitklingen Supabase Tabellen Setup

-- Stellen Sie sicher, dass die UUID-Erweiterung aktiviert ist
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Erstellen der cards-Tabelle
CREATE TABLE IF NOT EXISTS public.cards (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    element TEXT,
    evolution_level INTEGER DEFAULT 0,
    power INTEGER,
    health INTEGER,
    effect TEXT,
    flavor_text TEXT,
    base_cost INTEGER,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Erstellen der player_cards-Tabelle
CREATE TABLE IF NOT EXISTS public.player_cards (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    player_id TEXT NOT NULL,
    card_id UUID NOT NULL REFERENCES public.cards(id),
    quantity INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(player_id, card_id)
);

-- Erstellen der player_materials-Tabelle
CREATE TABLE IF NOT EXISTS public.player_materials (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    player_id TEXT NOT NULL,
    material_type TEXT NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(player_id, material_type)
);

-- Erstellen der player_data-Tabelle
CREATE TABLE IF NOT EXISTS public.player_data (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    player_id TEXT NOT NULL UNIQUE,
    username TEXT,
    level INTEGER DEFAULT 1,
    experience INTEGER DEFAULT 0,
    last_login TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Erstellen der worlds-Tabelle
CREATE TABLE IF NOT EXISTS public.worlds (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL,
    description TEXT,
    difficulty TEXT,
    unlock_level INTEGER DEFAULT 1,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Erstellen der game_sessions-Tabelle
CREATE TABLE IF NOT EXISTS public.game_sessions (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    player_id TEXT NOT NULL,
    world_id UUID REFERENCES public.worlds(id),
    session_duration INTEGER NOT NULL,
    cards_played INTEGER NOT NULL,
    victory BOOLEAN NOT NULL,
    opponent_type TEXT NOT NULL,
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Erstellen der exec_sql-Funktion für dynamische SQL-Ausführung
CREATE OR REPLACE FUNCTION public.exec_sql(sql text)
RETURNS void AS $$
BEGIN
    -- Setze einen festen search_path, um Sicherheitsrisiken zu vermeiden
    SET search_path = public, pg_catalog;
    
    -- Führe das SQL aus
    EXECUTE sql;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER
-- Setze den search_path explizit auf sichere Werte
SET search_path = public, pg_catalog;

-- Berechtigungen für die Tabellen
ALTER TABLE public.cards ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.player_cards ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.player_materials ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.player_data ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.worlds ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.game_sessions ENABLE ROW LEVEL SECURITY;

-- Standardrichtlinien für die Tabellen
CREATE POLICY "Alle können Karten lesen" ON public.cards
    FOR SELECT USING (true);

CREATE POLICY "Alle können Welten lesen" ON public.worlds
    FOR SELECT USING (true);

-- Spieler können nur ihre eigenen Daten lesen und bearbeiten
CREATE POLICY "Spieler können ihre eigenen Karten verwalten" ON public.player_cards
    FOR ALL USING (auth.uid()::text = player_id);

CREATE POLICY "Spieler können ihre eigenen Materialien verwalten" ON public.player_materials
    FOR ALL USING (auth.uid()::text = player_id);

CREATE POLICY "Spieler können ihre eigenen Daten verwalten" ON public.player_data
    FOR ALL USING (auth.uid()::text = player_id);

CREATE POLICY "Spieler können ihre eigenen Spielsitzungen sehen" ON public.game_sessions
    FOR SELECT USING (auth.uid()::text = player_id);

-- Erlauben Sie dem Service Role Key, alle Tabellen zu bearbeiten
CREATE POLICY "Service kann alles bearbeiten" ON public.cards
    FOR ALL USING (true);

CREATE POLICY "Service kann alles bearbeiten" ON public.player_cards
    FOR ALL USING (true);

CREATE POLICY "Service kann alles bearbeiten" ON public.player_materials
    FOR ALL USING (true);

CREATE POLICY "Service kann alles bearbeiten" ON public.player_data
    FOR ALL USING (true);

CREATE POLICY "Service kann alles bearbeiten" ON public.worlds
    FOR ALL USING (true);

CREATE POLICY "Service kann alles bearbeiten" ON public.game_sessions
    FOR ALL USING (true);
