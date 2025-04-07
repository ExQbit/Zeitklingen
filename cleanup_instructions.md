# Aufräumanweisungen für SQL-Dateien

Nach dem erfolgreichen Abschluss der Spielerdatenimplementierung können folgende SQL-Dateien als überflüssig betrachtet werden. Sie können entweder in ein Backup-Verzeichnis verschoben oder gelöscht werden, da ihre Funktionalität bereits in den Hauptdateien enthalten ist oder sie nur für die Fehlerbehebung verwendet wurden.

## Überflüssige Dateien zur Bereinigung:

1. **Temporäre Hilfsdateien**:
   - `check_all_tables.sql` - Wurde nur zum Überprüfen der Tabellenstruktur verwendet
   - `check_table_structure.sql` - Wurde nur für die Fehlerdiagnose verwendet
   - `fix_player_data_function.sql` - Wurde als Zwischenschritt zur Fehlerbehebung verwendet
   - `player_api_fix.sql` - Wurde für die Fehlerbehebung bei API-Funktionen verwendet
   - `update_player_cards_table.sql` - Wurde für das Hinzufügen fehlender Spalten verwendet
   - `update_all_tables.sql` - Funktionalität jetzt in den Hauptdateien enthalten

2. **Überarbeitete/veraltete Versionen**:
   - `remaining_player_api_functions.sql` - Wurde durch `final_player_api_functions.sql` ersetzt
   - `activate_full_player_data_function.sql` - Funktionalität jetzt in `final_player_api_functions.sql` enthalten

## Zu behaltende wichtige Dateien:

1. **Hauptdateien für die Datenbankeinrichtung**:
   - `supabase_tables_setup.sql` - Erstellt die Grundtabellen und Karten-Tabelle
   - `player_tables_setup.sql` - Erstellt die Spielerdaten-Tabellen
   - `player_api_functions.sql` - Enthält alle API-Funktionen für Spielerdaten
   - `player_data_populate.sql` - Enthält Testdaten (optional)

2. **Finale optimierte Versionen**:
   - `final_player_api_functions.sql` - Die finale Version aller API-Funktionen

## Vorgeschlagenes Vorgehen:

1. Erstellen Sie einen Backup-Ordner (optional):
   ```
   mkdir -p SQL/backup
   ```

2. Verschieben Sie überflüssige Dateien dorthin (optional) oder löschen Sie sie:
   ```
   # Verschieben (optional)
   mv check_all_tables.sql check_table_structure.sql fix_player_data_function.sql player_api_fix.sql update_player_cards_table.sql update_all_tables.sql remaining_player_api_functions.sql activate_full_player_data_function.sql SQL/backup/
   
   # Oder löschen
   rm check_all_tables.sql check_table_structure.sql fix_player_data_function.sql player_api_fix.sql update_player_cards_table.sql update_all_tables.sql remaining_player_api_functions.sql activate_full_player_data_function.sql
   ```

3. Organisieren Sie die wichtigen Dateien in einem SQL-Ordner (falls noch nicht geschehen):
   ```
   mkdir -p SQL/setup
   cp supabase_tables_setup.sql player_tables_setup.sql player_api_functions.sql player_data_populate.sql final_player_api_functions.sql SQL/setup/
   ```

4. Aktualisieren Sie die README.md mit der neuen Dateistruktur.

Diese Schritte werden Ihr Projektverzeichnis aufräumen und für die nächsten Entwicklungsschritte vorbereiten.
