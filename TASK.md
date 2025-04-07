# TASK.md für "Zeitklingen" Kartenspiel

## 📌 Aktuelle Aufgaben & Prioritäten

Diese Datei dient zur Nachverfolgung der aktuellen Entwicklungsaufgaben für das "Zeitklingen" Kartenspiel. Aufgaben werden priorisiert und nach Abschluss als erledigt markiert.

## 🚀 Phase 1: Konzeptionelle Grundlagen

### Spielregeln & Mechaniken
- [ ] **HOCH**: Detaillierte Spielregeln dokumentieren
  - [ ] Grundlegende Spielmechaniken definieren
  - [ ] Zugablauf festlegen
  - [ ] Ressourcensystem konzipieren (Mana, Energie, etc.)
  - [ ] Siegbedingungen definieren
- [ ] **HOCH**: Zeitmanipulationsmechaniken im Detail ausarbeiten
  - [ ] "Zurückspulen"-Mechanik konzipieren
  - [ ] "Vorausschau"-Mechanik definieren
  - [ ] Interaktion mit anderen Spielmechaniken dokumentieren
- [ ] **MITTEL**: Papierprototyp erstellen und testen
  - [ ] Basiskartenset für Prototyp entwerfen
  - [ ] Testspiele durchführen und Feedback sammeln
  - [ ] Spielregeln basierend auf Testerkenntnissen anpassen

### Kartendesign
- [ ] **HOCH**: Kartentypen definieren
  - [ ] Hauptkategorien festlegen (z.B. Angriff, Verteidigung, Zeit, Utility)
  - [ ] Karteneigenschaften und Attribute definieren
  - [ ] Seltenheitsstufen und Balancing-Rahmen festlegen
- [ ] **HOCH**: Initiales Kartenset von 30 Karten entwerfen
  - [ ] 10 Basiskarten konzipieren
  - [ ] 10 Zeitmanipulationskarten entwerfen
  - [ ] 10 fortgeschrittene/spezielle Karten entwickeln
- [ ] **MITTEL**: Karteninteraktionen und Synergien dokumentieren
  - [ ] Kombo-Möglichkeiten identifizieren
  - [ ] Potenzielle Balance-Probleme vorhersehen

## 🔧 Phase 2: Unity-Grundlagen & Architektur

### Projekt-Setup
- [ ] **HOCH**: Unity-Projekt einrichten
  - [ ] Passende Unity-Version auswählen (2022.3 LTS)
  - [ ] Git-Repository erstellen und .gitignore konfigurieren
  - [ ] Ordnerstruktur gemäß Modularisierungsplan einrichten
- [ ] **MITTEL**: Unity-Packages und Erweiterungen installieren
  - [ ] Notwendige Asset-Packages identifizieren und installieren
  - [ ] UI-Toolkit vs. uGUI evaluieren und Entscheidung treffen
  - [ ] Test-Framework einrichten

### Grundarchitektur
- [ ] **HOCH**: Kernklassen und -interfaces definieren
  - [ ] Model-View-Controller-Struktur implementieren
  - [ ] Spielzustands-Manager erstellen
  - [ ] Event-System für Karteninteraktionen entwickeln
- [ ] **HOCH**: Scriptable Objects für Kartendaten erstellen
  - [ ] Basisklasse für alle Karten definieren
  - [ ] Vererbungshierarchie für verschiedene Kartentypen entwerfen
  - [ ] Editor-Tools für einfache Kartenerstellung konzipieren
- [ ] **MITTEL**: Serialisierungssystem für Spielzustände entwerfen
  - [ ] Anforderungen für Zeitmanipulation berücksichtigen
  - [ ] Effiziente Speicherung von Spielzuständen implementieren

## 🎮 Phase 3: Grundlegende Spielmechaniken

### Spiellogik
- [ ] **HOCH**: Grundlegende Spielschleife implementieren
  - [ ] Rundenbasiertes System umsetzen
  - [ ] Spieler-Wechsel-Logik implementieren
  - [ ] Siegbedingungen prüfen
- [ ] **HOCH**: Kartenspielmechaniken entwickeln
  - [ ] Handkarten-Management implementieren
  - [ ] Kartenzieh- und Abwerfmechaniken erstellen
  - [ ] Ressourcensystem (Mana/Energie) implementieren
- [ ] **MITTEL**: Kampfsystem entwickeln
  - [ ] Schadensberechnung implementieren
  - [ ] Verteidigungsmechanismen einbauen
  - [ ] Statuseffekte (Buff/Debuff) umsetzen

### Zeitmanipulation
- [ ] **HOCH**: Command-Pattern für reversible Aktionen implementieren
  - [ ] Aktion-Historie-System entwickeln
  - [ ] Methoden für Rückgängigmachen von Aktionen erstellen
- [ ] **HOCH**: "Zurückspulen"-Mechanik programmieren
  - [ ] Zustand auf vorherigen Stand zurücksetzen
  - [ ] Visuelle Effekte für Zeitmanipulation konzipieren
- [ ] **MITTEL**: "Vorausschau"-Mechanik entwickeln
  - [ ] Zustandssimulation für mögliche Züge implementieren
  - [ ] UI für Vorschau zukünftiger Spielzustände

## 💻 Phase 4: Benutzeroberfläche

### UI-Grundlagen
- [ ] **HOCH**: Spielfeld-Layout designen
  - [ ] Handkartenbereich gestalten
  - [ ] Spielfeld-Zonen definieren
  - [ ] Spielerinformationsbereiche entwerfen
- [ ] **HOCH**: Kartendesign und -darstellung
  - [ ] Kartenvorlage erstellen
  - [ ] Datenanbindung für dynamische Kartenwerte
  - [ ] Hover- und Auswahleffekte implementieren
- [ ] **MITTEL**: Menüsysteme konzipieren
  - [ ] Hauptmenü entwerfen
  - [ ] Optionsmenü planen
  - [ ] Deck-Editor-UI konzipieren

### Interaktionen
- [ ] **HOCH**: Drag & Drop-System für Karten implementieren
  - [ ] Kartenauswahl und -bewegung programmieren
  - [ ] Legale Spielzonen hervorheben
  - [ ] Fehlerhafte Züge verhindern
- [ ] **MITTEL**: Visuelle Feedback-Mechanismen
  - [ ] Animationen für Kartenspieleffekte
  - [ ] Schadensanzeigen und Heilungseffekte
  - [ ] Zeitmanipulations-Visualisierungen

## 🤖 Phase 5: KI-Gegner

### KI-Grundlagen
- [ ] **HOCH**: Basis-KI-System implementieren
  - [ ] KI-Entscheidungsfindungsframework erstellen
  - [ ] Zugbewertungssystem entwickeln
- [ ] **MITTEL**: Einfache KI-Strategien programmieren
  - [ ] Offensive Strategie implementieren
  - [ ] Defensive Strategie implementieren
  - [ ] Konter-Strategie gegen Zeitmanipulation entwickeln

## 🧪 Phase 6: Testframework

### Unit-Tests
- [ ] **HOCH**: Test-Suite für Kernmechaniken einrichten
  - [ ] Tests für Karteninteraktionen erstellen
  - [ ] Tests für Spielzustandsänderungen implementieren
  - [ ] Zeitmanipulationstests entwickeln
- [ ] **MITTEL**: Regressionstests implementieren
  - [ ] CI/CD-Pipeline für automatisierte Tests konfigurieren

## 📝 Dokumentationssystem
- [ ] **HOCH**: Dokumenten-Konsistenzprüfung implementieren
  - [ ] Automatische Validierung der ZK-Codes
  - [ ] Memory-Sync Überwachung
- [ ] **MITTEL**: Dokumentationsvorlagen erstellen
  - [ ] Standardvorlage für Kartendesign
  - [ ] Mechanik-Beschreibungsformat

## 👥 Klassenspezifische Entwicklungen
- [ ] **HOCH**: Chronomant-Karten fertigstellen
  - [ ] Zeitachsen-Manipulation implementieren
  - [ ] Rückkopplungseffekte balancieren
- [ ] **HOCH**: Zeitwächter-Defensivmechaniken
  - [ ] Schutzmechanismen gegen Zeitmanipulation
  - [ ] Kontinuitätsregeln definieren
- [ ] **MITTEL**: Schattenschreiter-Fähigkeiten
  - [ ] Zeitlücken-Nutzung implementieren
  - [ ] Tarnmechaniken entwickeln

## 🛠️ Technische Aufgaben
- [ ] **MITTEL**: Tooling-Integration
  - [ ] Git-Hooks für Dokumentenprüfung
  - [ ] Automatische Memory-Aktualisierung
- [ ] **NIEDRIG**: KI-Balancing Prototyp
  - [ ] Testumgebung für KI-Simulation
  - [ ] Automatisiertes Balancing-Feedback

## 🔌 Supabase-Integration & Datenbankanbindung

### Kartenmanagement (abgeschlossen)
- [x] **HOCH**: Karten-Tabelle in Supabase einrichten
  - [x] Basis-Karteninformationen speichern
  - [x] Evolutionsstufen und Elementtypen implementieren
  - [x] Testdaten für verschiedene Klassen einfügen

### Spielerdatenmanagement
- [x] **HOCH**: Spielerdaten-Tabellen einrichten
  - [x] Spielerprofile mit Statistiken und Fortschritt
  - [x] Kartensammlungen und Materialien-Inventar
  - [x] Deck-Management-System
  - [x] Achievement-Tracking
  - [x] API-Funktionen für Spielerdatenverwaltung implementieren
- [ ] **HOCH**: Unity-Integration der Spielerdaten
  - [ ] Klassen für Supabase-Kommunikation erstellen
  - [ ] Spielerprofildaten mit UI verbinden
  - [ ] Kartensammlung im Spiel anzeigen
  - [ ] Deck-Editor mit Supabase verbinden
- [ ] **MITTEL**: Authentifizierung implementieren
  - [ ] Login-System für Spieler einrichten
  - [ ] Registrierungsprozess gestalten
  - [ ] Spielerdaten mit Auth-System verknüpfen

### Weitere Datenbankentwicklung
- [ ] **HOCH**: Welten-Daten migrieren
  - [ ] Welten mit Schwierigkeitsgraden definieren
  - [ ] Freischaltbedingungen implementieren
  - [ ] Belohnungen an Spielerdaten koppeln
- [ ] **MITTEL**: Spielsitzungen-Tracking
  - [ ] Spielverlauf aufzeichnen
  - [ ] Statistiken für Balancing sammeln
  - [ ] Visualisierung von Spielerstatistiken

### Serverseitige Funktionen
- [ ] **MITTEL**: Kartenbalancing-Tools
  - [ ] Datenanalysetools für Kartenstatistiken
  - [ ] Win-Raten nach Kartentyp tracken
- [ ] **NIEDRIG**: Automatisierte Belohnungssysteme
  - [ ] Tägliche Quests implementieren
  - [ ] Errungenschaften-Rewards

## SQL-Bereinigung und Optimierung
- [ ] **NIEDRIG**: Überprüfen und Konsolidieren der SQL-Dateien
  - [ ] Hilfsskripte archivieren oder organisieren
  - [ ] SQL-Dateistruktur dokumentieren
  - [ ] Backup-Strategie implementieren

## MCP-Server Problembehebung (04.04.2025)

**Problem**: `ModuleNotFoundError` für `modelcontextprotocol` trotz Installation

**Lösung**:
1. Virtuelle Umgebung neu erstellt
2. Expliziter Python-Pfad verwendet:
   ```bash
   /venv/bin/python /zk-commands/mcp_supabase_server.py
   ```

**Finale Lösung (04.04.2025)**

1. Python-Pfad mit `sys.path` angepasst
2. Modul mit `--ignore-installed` neu installiert
3. Server mit Debug-Flags gestartet

**Ergebnis**: Server startet erfolgreich

---

## ✅ Erledigte Aufgaben

### Datenbankintegration (07.04.2025)
- [x] Karten-Tabelle in Supabase migriert
- [x] Spielerdaten-Tabellen erstellt (player_data, player_cards, player_materials, player_decks, player_achievements)
- [x] API-Funktionen für Spielerdatenverwaltung implementiert
- [x] Dokumentation zur Datenbankstruktur erstellt

---

*Diese Aufgabenliste wird regelmäßig aktualisiert, um den Projektfortschritt widerzuspiegeln.*
