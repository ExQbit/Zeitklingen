-- Überprüfen aller relevanten Tabellen auf ihre Struktur

-- Überprüfen der player_cards-Tabelle
SELECT 'player_cards' AS table_name;
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'player_cards'
ORDER BY ordinal_position;

-- Überprüfen der player_materials-Tabelle
SELECT 'player_materials' AS table_name;
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'player_materials'
ORDER BY ordinal_position;

-- Überprüfen der player_decks-Tabelle
SELECT 'player_decks' AS table_name;
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'player_decks'
ORDER BY ordinal_position;

-- Überprüfen der player_achievements-Tabelle
SELECT 'player_achievements' AS table_name;
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'player_achievements'
ORDER BY ordinal_position;
