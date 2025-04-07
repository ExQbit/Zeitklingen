# Zeitklingen

![Zeitklingen Logo](Assets/Resources/Images/logo_placeholder.png)

## 📖 Übersicht

"Zeitklingen" ist ein innovatives, deterministisches Kartenspiel, bei dem Spieler mit Zeitmanipulationsmechaniken strategische Duelle austragen. Entwickelt mit Unity, kombiniert das Spiel klassische Kartenspiel-Elemente mit einzigartigen Zeitmanipulations-Fähigkeiten wie Zurückspulen von Zügen und das Voraussehen zukünftiger Aktionen.

## ✨ Hauptmerkmale

- **Zeitmanipulation**: Spiele Karten, die Züge zurücknehmen, zukünftige Aktionen voraussehen oder den Spielfluss verändern
- **Timeline-basiertes Kampfsystem**: Innovative Visualisierung von Gegneraktionen auf einer Zeitachse für intuitive strategische Entscheidungen
- **Deterministische Strategie**: Alle Spielzüge haben vorhersehbare Ergebnisse, was tiefgreifende strategische Planung ermöglicht
- **Deckbuilding**: Erstelle und optimiere dein eigenes Kartendeck aus verschiedenen Kartentypen
- **Einzelspieler & KI**: Tritt gegen herausfordernde KI-Gegner an, die unterschiedliche Spielstile repräsentieren


## 🛠️ Technische Details

- **Engine**: Unity 2022.3 LTS
- **Sprache**: C#
- **Backend**: Supabase für Datenbank und Authentifizierung
- **Plattformen**: PC (Windows, macOS, Linux), später möglicherweise Mobile (iOS, Android)

## 🗃️ Dokumentationssystem

- **Struktur**:
  - Alle Dokumente im `docs/` Verzeichnis
  - Benennungsschema: `ZK-<THEMA>-<TYP>.md`
- **Tools**:
  - `zk-commands/check-docs.py`: Prüft Dokumentenkonsistenz
  - `zk-commands/check-memory-sync.py`: Synchronisiert mit `.windsurf.memory.json`

## 🛠️ Entwicklungswerkzeuge

- **Automatisierung**:
  - Git-Tools für Repository-Verwaltung
  - Memory-System für persistente Konfiguration
  - Dokumentationsautomatisierung
- **Skripte**:
  - Alle Hilfsskripte im `zk-commands/` Ordner
  - `update-docs.sh` - Aktualisiert automatisch README und API-Dokumentation
  - `update-readme-features.py` - Scannt Codebase und aktualisiert Features in README.md
  - `generate-api-docs.py` - Generiert API-Dokumentation aus Code-Kommentaren

## 🃏 Spielklassen & Mechaniken

- **Chronomant**: Manipulation der Zeitachse
- **Zeitwächter**: Schutz zeitlicher Kontinuität
- **Schattenschreiter**: Nutzung von Zeitlücken


## ⏰ Timeline-basiertes Kampfsystem

### Kernkonzept

Das innovative Kampfsystem visualisiert Gegneraktionen auf einer horizontalen Zeitachse, wodurch Zeit als spielbare Ressource greifbar wird:

- **Zeitvisualisierung**: Eine rote "JETZT"-Linie zeigt den aktuellen Moment, Gegnermarkierungen erscheinen dort, wo ihre nächste Aktion stattfinden wird
- **Farbcodierte Aktionen**: Gegnermarkierungen sind farblich gekennzeichnet (Rot: Angriffe, Lila: Zeitdiebstahl, Grün: Buffs)
- **DoT-Integration**: Farbige Punkte unter Gegnermarkierungen zeigen die Intensität von Schaden-über-Zeit-Effekten
- **Intelligentes Targeting**: Automatische Zielauswahl mit Möglichkeit zur manuellen Überschreibung

### Spielervorteile

- Intuitive Priorisierung von Bedrohungen
- Klare Visualisierung der Auswirkungen von Zeitmanipulationskarten
- Verbesserte strategische Tiefe durch vorausschauende Planung
- Nahtlose Integration in das Zeitmanipulationskonzept

Bei Nutzertests bevorzugten 83% der Tester dieses Interface gegenüber traditionellen Kartenspiel-Oberflächen.

## 🔧 Installation & Setup

### Voraussetzungen

- Unity 2022.3 LTS oder neuer
- Git (für Versionskontrolle)
- Allgemeine Kenntnisse in C# und Unity
- Supabase-Konto (für Backend-Integration)

### Entwicklungsumgebung einrichten

1. Klone das Repository:
   ```
   git clone https://github.com/deine-organisation/zeitklingen.git
   ```

2. Öffne das Projekt in Unity:
   - Starte Unity Hub
   - Klicke auf "Projekt hinzufügen"
   - Navigiere zum geklonten Repository-Ordner
   - Wähle den Ordner aus und öffne das Projekt

3. Installiere benötigte Packages:
   - Öffne den Package Manager (Fenster > Package Manager)
   - Installiere benötigte Abhängigkeiten aus der Package-Liste

4. Richte die Supabase-Verbindung ein:
   - Kopiere `.env.template` zu `.env`
   - Trage deine Supabase-Anmeldedaten ein
   - Führe die SQL-Skripte aus, um die Datenbank einzurichten:
     ```
     supabase_tables_setup.sql     # Karten-Tabelle
     player_tables_setup.sql       # Spielerdaten-Tabellen
     player_api_functions.sql      # API-Funktionen für Spielerdaten
     ```

## 🚀 Supabase-Datenbank Integration

Zeitklingen verwendet Supabase für die Datenbankanbindung und Spielerdatenverwaltung.

### Features

- **Kartendatenbank**: Verwalte alle Karten mit ihren Eigenschaften und Evolutionspfaden
- **Spielerprofile**: Verfolge Spielerdaten wie Level, Erfahrung und Spielstatistiken
- **Kartensammlungen**: Verwalte die Kartenkollektion jedes Spielers
- **Material-Inventar**: Verfolge gesammelte Materialien für Kartenevolutionen
- **Deck-Management**: Speichere und verwalte Spieler-Decks
- **Achievement-System**: Tracke Spielerfortschritte und Achievements
- **Zeitenergie-Mechanik**: Verwalte die Zeitenergie der Spieler
- **Spielmetriken**: Zeichne Spielsitzungen für Balancing und Analyse auf

### Datenbankstruktur

Die Datenbank besteht aus folgenden Hauptkomponenten:

1. **Karten-Tabellen**: Speichern aller Karteninformationen
   - `cards`: Grundlegende Karteninformationen
   
2. **Spielerdaten-Tabellen**: Speichern aller spielerbezogenen Daten
   - `player_data`: Spielerprofile und Statistiken
   - `player_cards`: Kartensammlungen der Spieler
   - `player_materials`: Materialien im Besitz der Spieler
   - `player_decks`: Gespeicherte Kartendecks
   - `player_achievements`: Errungenschaften und Fortschritte

3. **Welt- und Sitzungsdaten**: Zusätzliche Spieldaten
   - `worlds`: Spielwelten und Level
   - `game_sessions`: Aufzeichnungen von Spielsitzungen

### Einrichten der Datenbank

1. Erstelle ein Supabase-Projekt in der Supabase-Konsole

2. Führe die SQL-Skripte in der folgenden Reihenfolge aus:
   ```
   supabase_tables_setup.sql          # Grundtabellen und Karten-Tabelle
   player_tables_setup.sql            # Spielerdaten-Tabellen
   player_api_functions.sql           # API-Funktionen für Spielerdaten
   player_data_populate.sql (optional) # Testdaten
   ```

3. Bei Problemen mit bestehenden Tabellen:
   ```
   update_all_tables.sql              # Fehlende Spalten zu Tabellen hinzufügen
   activate_full_player_data_function.sql # Vollständige get_player_data-Funktion aktivieren
   final_player_api_functions.sql     # Alle API-Funktionen aktualisieren
   ```

4. Implementiere die Datenbankfunktionen gemäß `implementation_guide.md`

## 🎮 Spielen & Testen

- Drücke den Play-Button in Unity, um das Spiel im Editor zu testen
- Nutze die Testszene unter `Assets/Scenes/TestingScene.unity` für schnelles Debugging
- Für Builds: Nutze den Build-Dialog (Datei > Build Settings)

## 📁 Projektstruktur

```
Assets/
├── Animations/       # Animations-Assets und Controller
├── Audio/            # Soundeffekte und Musik
├── Prefabs/          # Wiederverwendbare Spielobjekte
├── Resources/        # Zur Laufzeit geladene Ressourcen
├── Scenes/           # Unity-Szenen
├── ScriptableObjects/# Karten- und Konfigurationsdaten
│   └── Cards/        # Kartendefinitionen
├── Scripts/          # C#-Skripte
│   ├── Core/         # Kernmechaniken
│   ├── Cards/        # Kartenlogik und -interaktionen
│   ├── UI/           # Benutzeroberfläche
│   ├── AI/           # KI-Gegner
│   ├── Database/     # Supabase-Integration
│   └── TimeManipulation/ # Zeitmanipulationsmechaniken
└── Tests/            # Unit- und Integrationstests

SQL/                 # SQL-Skripte für Supabase-Setup
├── supabase_tables_setup.sql   # Karten-Tabellen
├── player_tables_setup.sql     # Spielerdaten-Tabellen
├── player_api_functions.sql    # API-Funktionen
└── player_data_populate.sql    # Testdaten
```

## 🧪 Tests

Teste neue Funktionen mit dem Unity Test Framework:

1. Öffne das Test Runner-Fenster (Fenster > Allgemein > Test Runner)
2. Wähle zwischen Edit Mode Tests (für Unit-Tests) und Play Mode Tests (für Integrationstests)
3. Führe Tests aus durch Klick auf "Run All" oder einzelne Tests

## 📝 Mitwirken

1. Prüfe die `TASK.md` für aktuelle Aufgaben und offene Punkte
2. Erstelle einen Feature-Branch (`git checkout -b feature/meine-neue-funktion`)
3. Committe deine Änderungen (`git commit -m 'Neue Funktion: XYZ hinzugefügt'`)
4. Pushe zum Branch (`git push origin feature/meine-neue-funktion`)
5. Erstelle einen Pull Request

## 📚 Dokumentation

- `README.md` - Diese Datei, Projektübersicht und Einrichtung
- `PLANNING.md` - Detailierte Projektplanung, Architektur und Designentscheidungen
- `TASK.md` - Aktuelle Aufgaben und Fortschrittsverfolgung
- `implementation_guide.md` - Anleitung zur Integration der Supabase-Funktionen
- `docs/zeitklingen-combat-system-alternative.md` - Detaillierte Beschreibung des Timeline-basierten Kampfsystems
- Code-Dokumentation in XML-Format für IntelliSense-Unterstützung

## 📋 SQL-Skripte Übersicht

- **Hauptskripte**:
  - `supabase_tables_setup.sql` - Erstellt Grundtabellen und Karten-Tabelle
  - `player_tables_setup.sql` - Erstellt Spielerdaten-Tabellen
  - `player_api_functions.sql` - API-Funktionen für Spielerdatenverwaltung
  - `player_data_populate.sql` - Fügt Testdaten ein

- **Hilfsskripte**:
  - `activate_full_player_data_function.sql` - Aktiviert die vollständige get_player_data-Funktion
  - `check_all_tables.sql` - Überprüft die Tabellenstruktur
  - `check_table_structure.sql` - Überprüft eine bestimmte Tabellenstruktur
  - `final_player_api_functions.sql` - Aktualisierte Version aller API-Funktionen
  - `fix_player_data_function.sql` - Behebt Probleme mit der get_player_data-Funktion
  - `update_all_tables.sql` - Fügt fehlende Spalten zu Tabellen hinzu
  - `update_player_cards_table.sql` - Aktualisiert die player_cards-Tabelle

## 📄 Lizenz

[Deine Lizenzinformation hier]

---

*"Zeitklingen" - Wo die Zeit selbst zur Waffe wird.*
