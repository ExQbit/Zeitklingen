# ZK-SUPABASE - Zeitklingen Supabase-Integration

## Übersicht

Die Supabase-Integration für Zeitklingen ermöglicht die automatische Synchronisierung von Spielinhalten zwischen dem lokalen Entwicklungssystem und einer Supabase-Datenbank. Diese Integration ist Teil der CI/CD-Pipeline und unterstützt verschiedene Umgebungen (Entwicklung, Staging, Produktion).

## Datenbankstruktur

### Karten-Tabelle (`cards`)

Die `cards`-Tabelle speichert alle Kartendefinitionen des Spiels:

| Feld | Typ | Beschreibung |
|------|-----|-------------|
| id | UUID | Eindeutige ID der Karte |
| name | TEXT | Name der Karte |
| type | TEXT | Kartentyp (z.B. Angriff, Verteidigung) |
| element | TEXT | Element der Karte (optional) |
| evolution_level | INTEGER | Evolutionsstufe der Karte |
| power | INTEGER | Angriffsstärke der Karte |
| health | INTEGER | Gesundheitspunkte der Karte |
| effect | TEXT | Spezialeffekt der Karte |
| flavor_text | TEXT | Beschreibungstext der Karte |
| base_cost | INTEGER | Grundkosten der Karte |
| created_at | TIMESTAMP | Erstellungszeitpunkt |
| updated_at | TIMESTAMP | Letzter Aktualisierungszeitpunkt |

### Spielkonfiguration (`game_config`)

Die `game_config`-Tabelle speichert globale Spieleinstellungen:

| Feld | Typ | Beschreibung |
|------|-----|-------------|
| key | TEXT | Eindeutiger Schlüssel der Konfiguration |
| value | JSONB | Konfigurationswert als JSON |
| description | TEXT | Beschreibung der Konfiguration |
| updated_at | TIMESTAMP | Letzter Aktualisierungszeitpunkt |

## Automatisierungsskripte

### sync-database.py

Dieses Python-Skript synchronisiert lokale Kartendefinitionen und Spielkonfigurationen mit der Supabase-Datenbank:

```bash
python3 sync-database.py [--env ENV] [--dry-run] [--verbose]
```

Optionen:
- `--env ENV`: Umgebung (dev, staging, prod), Standard: dev
- `--dry-run`: Zeigt Änderungen an, ohne sie anzuwenden
- `--verbose`: Ausführliche Ausgabe

### update-database.sh

Dieses Shell-Skript ist ein Wrapper für das Python-Skript und bietet zusätzliche Funktionen:

```bash
./update-database.sh [--env ENV] [--dry-run] [--verbose]
```

Optionen:
- `--env, -e ENV`: Umgebung (dev, staging, prod), Standard: dev
- `--dry-run, -d`: Zeigt Änderungen an, ohne sie anzuwenden
- `--verbose, -v`: Ausführliche Ausgabe

## CI/CD-Integration

Die Datenbankautomatisierung ist in die CI/CD-Pipeline integriert und kann über GitHub Actions ausgeführt werden:

1. **Manuelles Auslösen**: Der Workflow wird nur manuell über die GitHub-Oberfläche ausgelöst
2. **Umgebungsauswahl**: Wählen Sie die Zielumgebung (dev, staging, prod)
3. **Dry-Run-Modus**: Zeigt Änderungen an, ohne sie anzuwenden
4. **Bestätigung**: Änderungen werden nur mit expliziter Bestätigung angewendet

### Workflow-Übersicht

Der Workflow besteht aus zwei Hauptschritten:

1. **Prüfung auf Änderungen**: Überprüft, ob Aktualisierungen der Datenbank erforderlich sind
2. **Datenbankaktualisierung**: Führt die Aktualisierung durch, wenn Änderungen erforderlich sind und bestätigt wurden

## Einrichtung

### Lokale Einrichtung

1. **Supabase-Projekt erstellen**:
   - Registrieren Sie sich bei [Supabase](https://supabase.io)
   - Erstellen Sie ein neues Projekt
   - Notieren Sie sich die Projekt-URL und den API-Schlüssel

2. **Umgebungsvariablen konfigurieren**:
   Erstellen Sie eine `.env`-Datei im Projektverzeichnis mit folgenden Variablen:
   ```
   SUPABASE_URL=https://your-project-id.supabase.co
   SUPABASE_KEY=your-supabase-key
   SUPABASE_URL_DEV=https://your-dev-project-id.supabase.co
   SUPABASE_KEY_DEV=your-dev-supabase-key
   SUPABASE_URL_STAGING=https://your-staging-project-id.supabase.co
   SUPABASE_KEY_STAGING=your-staging-supabase-key
   ```

3. **Abhängigkeiten installieren**:
   ```bash
   pip install supabase python-dotenv
   ```

### GitHub Actions Einrichtung

1. **Secrets konfigurieren**:
   Fügen Sie die folgenden Secrets zu Ihrem GitHub-Repository hinzu:
   - `SUPABASE_URL`
   - `SUPABASE_KEY`
   - `SUPABASE_URL_DEV`
   - `SUPABASE_KEY_DEV`
   - `SUPABASE_URL_STAGING`
   - `SUPABASE_KEY_STAGING`

## Verwendung

### Lokale Verwendung

1. **Datenbank synchronisieren (Standard)**:
   ```bash
   ./zk-commands/update-database.sh
   ```
   Dies synchronisiert Kartendefinitionen und Spielkonfigurationen mit der Entwicklungsumgebung.

2. **Mit einer bestimmten Umgebung**:
   ```bash
   ./zk-commands/update-database.sh --env staging
   ```
   Synchronisiert mit der Staging-Umgebung.

3. **Nur Änderungen anzeigen (ohne Anwendung)**:
   ```bash
   ./zk-commands/update-database.sh --dry-run
   ```
   Zeigt an, welche Änderungen vorgenommen würden, ohne sie tatsächlich anzuwenden.

### GitHub Actions

1. **Öffnen Sie Ihr Repository auf GitHub**

2. **Navigieren Sie zum Tab "Actions"**

3. **Wählen Sie "Zeitklingen Datenbankautomatisierung"** aus der Liste der Workflows

4. **Klicken Sie auf "Run workflow"**

5. **Konfigurieren Sie die Optionen**:
   - **Umgebung**: Wählen Sie die Zielumgebung (dev, staging, prod)
   - **Nur Änderungen anzeigen**: Aktivieren Sie dies, um Änderungen nur anzuzeigen, ohne sie anzuwenden
   - **Änderungen automatisch committen**: Aktivieren Sie dies, wenn Änderungen automatisch committet werden sollen

6. **Klicken Sie auf "Run workflow"** um den Prozess zu starten

7. **Überprüfen Sie die Ergebnisse**:
   - Wenn "Änderungen automatisch committen" deaktiviert war, werden die Änderungen angezeigt, aber nicht gespeichert
   - Sie können die Änderungen dann manuell übernehmen oder den Workflow erneut mit aktiviertem Auto-Commit ausführen

## Empfohlene Nutzung

- **Nach Hinzufügen neuer Karten**: Um Kartendefinitionen zu synchronisieren
- **Nach Änderungen an Spielkonfigurationen**: Um Spieleinstellungen zu aktualisieren
- **Vor Releases**: Mit Dry-Run-Option, um Änderungen zu überprüfen
- **Bei Umgebungswechseln**: Um Daten zwischen Umgebungen zu synchronisieren

## Fehlerbehebung

### Häufige Probleme

1. **Verbindungsfehler**:
   - Überprüfen Sie die Supabase-URL und den API-Schlüssel
   - Stellen Sie sicher, dass die `.env`-Datei korrekt konfiguriert ist

2. **Fehlende Tabellen**:
   - Das Skript erstellt automatisch fehlende Tabellen
   - Überprüfen Sie die Tabellenstruktur in der Supabase-Konsole

3. **Synchronisierungskonflikte**:
   - Bei Konflikten werden lokale Änderungen bevorzugt
   - Verwenden Sie die `--verbose`-Option für detaillierte Fehlerinformationen

## Integration mit anderen Systemen

Die Supabase-Integration kann mit anderen Systemen kombiniert werden:

- **Unity-Integration**: Laden von Kartendaten direkt aus der Supabase-Datenbank
- **Web-Admin-Panel**: Bearbeiten von Kartendefinitionen über eine Weboberfläche
- **Spieler-Datenbank**: Speichern von Spielerfortschritten und -statistiken

## Weitere Ressourcen

- [Supabase-Dokumentation](https://supabase.io/docs)
- [Python Supabase-Client](https://github.com/supabase-community/supabase-py)
- [GitHub Actions-Dokumentation](https://docs.github.com/en/actions)
