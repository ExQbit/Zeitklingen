-- Script zum Hinzufügen aller fehlenden Spalten zu den Tabellen

-- player_cards-Tabelle aktualisieren
ALTER TABLE public.player_cards
ADD COLUMN IF NOT EXISTS enhancement_level INTEGER DEFAULT 0,
ADD COLUMN IF NOT EXISTS is_favorite BOOLEAN DEFAULT false,
ADD COLUMN IF NOT EXISTS times_played INTEGER DEFAULT 0;

-- player_materials-Tabelle überprüfen und erstellen, falls nicht vorhanden
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'player_materials') THEN
        CREATE TABLE public.player_materials (
            id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
            player_id TEXT NOT NULL,
            material_type TEXT NOT NULL,
            quantity INTEGER NOT NULL DEFAULT 0,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            UNIQUE(player_id, material_type)
        );
        
        -- Row-Level Security aktivieren
        ALTER TABLE public.player_materials ENABLE ROW LEVEL SECURITY;
        
        -- Policies erstellen
        DO $policy$
        BEGIN
            IF NOT EXISTS (
                SELECT 1 FROM pg_policy 
                WHERE polname = 'Spieler können ihre eigenen Materialien verwalten'
                AND polrelid = 'public.player_materials'::regclass
            ) THEN
                CREATE POLICY "Spieler können ihre eigenen Materialien verwalten" ON public.player_materials
                FOR ALL USING (auth.uid()::text = player_id);
            END IF;
            
            IF NOT EXISTS (
                SELECT 1 FROM pg_policy 
                WHERE polname = 'Service kann alle Spielermaterialien bearbeiten'
                AND polrelid = 'public.player_materials'::regclass
            ) THEN
                CREATE POLICY "Service kann alle Spielermaterialien bearbeiten" ON public.player_materials
                FOR ALL USING (true);
            END IF;
        END $policy$;
    END IF;
END $$;

-- player_decks-Tabelle überprüfen und erstellen, falls nicht vorhanden
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'player_decks') THEN
        CREATE TABLE public.player_decks (
            id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
            player_id TEXT NOT NULL,
            deck_name TEXT NOT NULL,
            deck_class TEXT,
            cards UUID[] NOT NULL,
            is_active BOOLEAN DEFAULT false,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            UNIQUE(player_id, deck_name)
        );
        
        -- Row-Level Security aktivieren
        ALTER TABLE public.player_decks ENABLE ROW LEVEL SECURITY;
        
        -- Policies erstellen
        DO $policy$
        BEGIN
            IF NOT EXISTS (
                SELECT 1 FROM pg_policy 
                WHERE polname = 'Spieler können ihre eigenen Decks verwalten'
                AND polrelid = 'public.player_decks'::regclass
            ) THEN
                CREATE POLICY "Spieler können ihre eigenen Decks verwalten" ON public.player_decks
                FOR ALL USING (auth.uid()::text = player_id);
            END IF;
            
            IF NOT EXISTS (
                SELECT 1 FROM pg_policy 
                WHERE polname = 'Service kann alle Spielerdecks bearbeiten'
                AND polrelid = 'public.player_decks'::regclass
            ) THEN
                CREATE POLICY "Service kann alle Spielerdecks bearbeiten" ON public.player_decks
                FOR ALL USING (true);
            END IF;
        END $policy$;
    END IF;
END $$;

-- player_achievements-Tabelle überprüfen und erstellen, falls nicht vorhanden
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'player_achievements') THEN
        CREATE TABLE public.player_achievements (
            id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
            player_id TEXT NOT NULL,
            achievement_name TEXT NOT NULL,
            progress INTEGER DEFAULT 0,
            completed BOOLEAN DEFAULT false,
            achieved_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            UNIQUE(player_id, achievement_name)
        );
        
        -- Row-Level Security aktivieren
        ALTER TABLE public.player_achievements ENABLE ROW LEVEL SECURITY;
        
        -- Policies erstellen
        DO $policy$
        BEGIN
            IF NOT EXISTS (
                SELECT 1 FROM pg_policy 
                WHERE polname = 'Spieler können ihre eigenen Achievements verwalten'
                AND polrelid = 'public.player_achievements'::regclass
            ) THEN
                CREATE POLICY "Spieler können ihre eigenen Achievements verwalten" ON public.player_achievements
                FOR ALL USING (auth.uid()::text = player_id);
            END IF;
            
            IF NOT EXISTS (
                SELECT 1 FROM pg_policy 
                WHERE polname = 'Service kann alle Spielerachievements bearbeiten'
                AND polrelid = 'public.player_achievements'::regclass
            ) THEN
                CREATE POLICY "Service kann alle Spielerachievements bearbeiten" ON public.player_achievements
                FOR ALL USING (true);
            END IF;
        END $policy$;
    END IF;
END $$;

-- Überprüfung der Spaltenstruktur für jede Tabelle
SELECT 'player_cards Spalten:' AS message;
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'player_cards'
ORDER BY ordinal_position;

SELECT 'player_materials Spalten:' AS message;
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'player_materials'
ORDER BY ordinal_position;

SELECT 'player_decks Spalten:' AS message;
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'player_decks'
ORDER BY ordinal_position;

SELECT 'player_achievements Spalten:' AS message;
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'player_achievements'
ORDER BY ordinal_position;

SELECT 'Alle Tabellen und Spalten wurden aktualisiert.' AS message;
