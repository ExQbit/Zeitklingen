-- Script zum Hinzufügen fehlender Spalten zur player_cards-Tabelle

-- Überprüfen der aktuellen Struktur
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'player_cards';

-- Fehlende Spalten zur player_cards-Tabelle hinzufügen
ALTER TABLE public.player_cards
ADD COLUMN IF NOT EXISTS enhancement_level INTEGER DEFAULT 0,
ADD COLUMN IF NOT EXISTS is_favorite BOOLEAN DEFAULT false,
ADD COLUMN IF NOT EXISTS times_played INTEGER DEFAULT 0;

-- Bestätigung ausgeben
SELECT 'Die player_cards-Tabelle wurde erfolgreich aktualisiert.' AS message;
