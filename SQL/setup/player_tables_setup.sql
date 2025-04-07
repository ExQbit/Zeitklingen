-- Zeitklingen Spielerdaten Tabellen Setup

-- Stellen Sie sicher, dass die UUID-Erweiterung aktiviert ist
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Erstellen der player_data-Tabelle
CREATE TABLE IF NOT EXISTS public.player_data (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    player_id TEXT NOT NULL UNIQUE,
    username TEXT,
    level INTEGER DEFAULT 1,
    experience INTEGER DEFAULT 0,
    
    -- Spielerspezifische Zeitklingen-Attribute
    time_energy INTEGER DEFAULT 100,
    max_time_energy INTEGER DEFAULT 100,
    time_energy_regen_rate FLOAT DEFAULT 1.0,
    
    -- Bevorzugte Charakter-Klasse (Chronomant, Zeitwächter, Schattenschreiter)
    preferred_class TEXT,
    
    -- Spiel-Statistiken
    games_played INTEGER DEFAULT 0,
    games_won INTEGER DEFAULT 0,
    total_cards_played INTEGER DEFAULT 0,
    total_damage_dealt INTEGER DEFAULT 0,
    total_time_stolen FLOAT DEFAULT 0,
    total_time_protected FLOAT DEFAULT 0,
    
    -- Quest-Fortschritte
    current_world_id UUID,
    completed_worlds TEXT[] DEFAULT '{}',
    
    last_login TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Erstellen der player_cards-Tabelle
CREATE TABLE IF NOT EXISTS public.player_cards (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    player_id TEXT NOT NULL,
    card_id UUID NOT NULL REFERENCES public.cards(id),
    quantity INTEGER NOT NULL DEFAULT 0,
    
    -- Verbesserte Kartenattribute (für mögliche Individualisierung)
    enhancement_level INTEGER DEFAULT 0,
    is_favorite BOOLEAN DEFAULT false,
    times_played INTEGER DEFAULT 0,
    
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
    
    -- Für die Zeitklingen-Materialien
    -- Materialtypen könnten sein: time_essence, fire_crystal, water_crystal, air_crystal, earth_crystal, metal_fragment, etc.
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(player_id, material_type)
);

-- Erstellen der player_decks-Tabelle (für gespeicherte Kartendecks)
CREATE TABLE IF NOT EXISTS public.player_decks (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    player_id TEXT NOT NULL,
    deck_name TEXT NOT NULL,
    deck_class TEXT, -- Chronomant, Zeitwächter, Schattenschreiter
    cards UUID[] NOT NULL, -- Array von Karten-IDs
    is_active BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(player_id, deck_name)
);

-- Erstellen der player_achievements-Tabelle
CREATE TABLE IF NOT EXISTS public.player_achievements (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    player_id TEXT NOT NULL,
    achievement_name TEXT NOT NULL,
    achieved_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    progress INTEGER DEFAULT 0,
    completed BOOLEAN DEFAULT false,
    UNIQUE(player_id, achievement_name)
);

-- Berechtigungen für die Tabellen
ALTER TABLE public.player_data ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.player_cards ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.player_materials ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.player_decks ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.player_achievements ENABLE ROW LEVEL SECURITY;

-- Standardrichtlinien für die Tabellen
-- Spieler können nur ihre eigenen Daten lesen und bearbeiten
CREATE POLICY "Spieler können ihre eigenen Daten verwalten" ON public.player_data
    FOR ALL USING (auth.uid()::text = player_id);

CREATE POLICY "Spieler können ihre eigenen Karten verwalten" ON public.player_cards
    FOR ALL USING (auth.uid()::text = player_id);

CREATE POLICY "Spieler können ihre eigenen Materialien verwalten" ON public.player_materials
    FOR ALL USING (auth.uid()::text = player_id);

CREATE POLICY "Spieler können ihre eigenen Decks verwalten" ON public.player_decks
    FOR ALL USING (auth.uid()::text = player_id);

CREATE POLICY "Spieler können ihre eigenen Achievements verwalten" ON public.player_achievements
    FOR ALL USING (auth.uid()::text = player_id);

-- Service Role Policies
CREATE POLICY "Service kann alle Spielerdaten bearbeiten" ON public.player_data
    FOR ALL USING (true);

CREATE POLICY "Service kann alle Spielerkarten bearbeiten" ON public.player_cards
    FOR ALL USING (true);

CREATE POLICY "Service kann alle Spielermaterialien bearbeiten" ON public.player_materials
    FOR ALL USING (true);

CREATE POLICY "Service kann alle Spielerdecks bearbeiten" ON public.player_decks
    FOR ALL USING (true);

CREATE POLICY "Service kann alle Spielerachievements bearbeiten" ON public.player_achievements
    FOR ALL USING (true);

-- Testdaten für die Entwicklung erstellen
INSERT INTO public.player_data (player_id, username, level, experience, preferred_class)
VALUES 
('test_player_1', 'TestChronomant', 5, 1200, 'Chronomant'),
('test_player_2', 'TestZeitwächter', 4, 950, 'Zeitwächter'),
('test_player_3', 'TestSchattenschreiter', 6, 1450, 'Schattenschreiter');

-- Hinweis: Nachdem die Tabellen erstellt wurden, müssen Kartendaten für die test_player hinzugefügt werden
-- Dafür müssen zuerst die Karten-IDs aus der cards-Tabelle abgerufen werden