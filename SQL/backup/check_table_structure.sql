-- SQL um die aktuelle Struktur der player_data Tabelle zu überprüfen
SELECT 
    column_name, 
    data_type, 
    character_maximum_length
FROM 
    information_schema.columns
WHERE 
    table_name = 'player_data'
ORDER BY 
    ordinal_position;
