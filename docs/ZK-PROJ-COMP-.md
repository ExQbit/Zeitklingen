# Projektübersicht: Zeitklingen (ZK-PROJ-COMP-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-25): Komprimierte Version von ZK-PROJ-v1.0-20250325
- v1.1 (2025-03-27): Integration der Weltstruktur, des DoT-Kategoriesystems, der angepassten Balancingwerte und des 70/30-Materialverteilungssystems

## Zusammenfassung
Zeitklingen ist ein innovatives zeit-basiertes Kartenspiel mit strategischer Tiefe durch Zeit als einziger Ressource, Kartenprogression via Evolution und deterministische Mechaniken für skill-basiertes Gameplay. Spieler navigieren durch fünf elementare Welten, die zusammen Akt 1 bilden, mit steigender Komplexität und thematischer Kohärenz.

## 1. Projektdefinition

### 1.1 Kernprinzipien
- **Zeit als einzige Ressource**: 60-Sekunden-Timer statt traditioneller Ressourcen
- **Evolution statt Sammlung**: Kartenentwicklung statt Neuakquisition
- **Deterministische Mechaniken**: Minimaler Zufall für maximale Strategie
- **Mobile-First**: Optimiert für kurze, intensive Sessions
- **Premium-Modell**: $6.99 mit ethischen IAPs (kosmetisch, Erweiterungen)

### 1.2 Zielplattformen
1. **Primär**: iOS und Android

## 2. Weltensystem: Akt 1

### 2.1 Weltstruktur
| Welt | Element | Zeitthema | Hauptmechanik | Materialbias |
|------|---------|-----------|--------------|--------------|
| 1: Zeitwirbel-Tal | Neutral | Zeitbeginn | Zeitrisse | Ausgewogen |
| 2: Flammen-Schmiede | Feuer | Verbrennung | DoT-Zeitgewinn | 70% Feuer |
| 3: Eiszeit-Festung | Eis | Verlangsamung | Zeitstasis (40%) | 70% Eis |
| 4: Gewittersphäre | Blitz | Beschleunigung | Chronoresonanz | 70% Blitz |
| 5: Chronos-Nexus | Gemischt | Konvergenz | Elementsymbiose | Ausgewogen |

### 2.2 Spelzeit und Progression
- **Gesamtspielzeit Akt 1**: 18-20h (Erstdurchlauf), 54-60h (alle Klassen)
- **Standardkampfdauer**: 60s in allen Welten
- **70/30-Materialverteilung**: 70% thematisches Element, 30% diverse Materialien
- **Evolutionsfortschritt**: ~25-30% des Decks nach Abschluss von Akt 1

### 2.3 DoT-Kategoriesystem
| Kategorie | Schadenswert/Tick | Zeitgewinn | Visualisierung |
|-----------|-------------------|------------|----------------|
| Schwach | 1 | 0,5s | Ein Punkt (●) |
| Mittel | 2-3 | 1,0s | Zwei Punkte (●●) |
| Stark | 4+ | 2,0s | Drei Punkte (●●●) |

### 2.4 Klassenaffinitäten
- **Chronomant**: Starke Affinität zu Welt 2 (Feuer) und 4 (Blitz)
- **Zeitwächter**: Starke Affinität zu Welt 3 (Eis)
- **Schattenschreiter**: Starke Affinität zu Welt 4 (Blitz)

### 2.5 Schwierigkeitsstufen
- **Normal**: Standardversion aller Dungeons
- **Heroisch**: Verstärkte Weltmechaniken, verbesserte Materialbelohnungen
- **Legendär**: Kombinierte Weltmechaniken, reduzierte Zeitlimits (50s), Premium-Materialien

## 3. Aktuelle Prioritäten (Q1-Q2 2025)

### 3.1 Hochpriorität (sofort)
1. Implementierung des DoT-Kategoriesystems
2. Balancingänderungen:
   - Zeitstasis in Welt 3 auf 40% reduziert (statt 50%)
   - Chronoresonanz mit +0,5s Zeitgewinn
   - Blitz-Ketteneffektivität auf 70% reduziert (statt 80%)
3. Integration der 70/30-Materialverteilung

### 3.2 Mittelpriorität (nächste 2 Monate)
1. Vollständige Implementierung der fünf Welten
2. Entwicklung aller Dungeon-Mechaniken
3. UI-Optimierung für DoT-Kategorien und Kampffeld-Effekte
4. Ranglisten-Feature für kompetitive Spieler

### 3.3 Langfristige Prioritäten (3-6 Monate)
1. Entwicklung von Akt 2 mit neuen Welten und Mechaniken
2. Ausbau der narrativen Elemente
3. Ausarbeitung zusätzlicher Schwierigkeitsgrade
4. Implementierung weiterer Klassen

## 4. Team und Verantwortlichkeiten

### 4.1 Kernteam
- **Projektleitung**: Gesamtvision, Scope, Timeline
- **Gamedesign**: Spielmechaniken, Balancing, Content
- **Programmierung**: Technische Implementation, Architektur
- **Art-Direction**: Visuelle Gestaltung, Asset-Erstellung
- **UX-Design**: Spielerfahrung, Interface

### 4.2 Dokumentationsverantwortlichkeiten
- **Dokumentationskoordinator**: Gesamtstruktur, Standards
- **Systemverantwortliche**: Spezifische Systemdokumente
- **Inhaltsautoren**: Inhaltsmodule nach Templates

## 5. Risikomanagement

### 5.1 Identifizierte Risiken
| Risiko | Wahrscheinlichkeit | Auswirkung | Maßnahmen |
|--------|-------------------|------------|-----------|
| Balancing-Probleme | Hoch | Mittel | Iteratives Testing, Multiperspektiven-Analyse |
| Komplexität für neue Spieler | Mittel | Hoch | Optimiertes Tutorial, Progressive Komplexität |
| Performance-Probleme | Mittel | Hoch | Frühes Testen auf Zielgeräten |
| Asset-Produktion-Verzögerungen | Mittel | Mittel | Vorproduktion, Prioritäten-Pipeline |
| Feature-Creep | Hoch | Mittel | Strenge Scope-Kontrolle, MVP-Fokus |

## 6. Dokumentationsaktualisierungen

### 6.1 Zu aktualisierende Dokumente
| Dokument | Änderung | Priorität |
|----------|----------|-----------|
| ZK-TIME-v1.1 | DoT-Kategoriesystem | Hoch |
| ZK-BAL-v1.1 | Balancingänderungen | Hoch |
| ZK-MAT-v1.1 | 70/30-Materialverteilung | Hoch |
| ZK-EVO-v1.1 | DoT-Kategorien, Blitz-Anpassung | Mittel |
| ZK-CLASS-*-v1.1 | Klassenanpassungen | Mittel |
| ZK-TECH-COMP-v1.1 | Implementierungsdetails | Niedrig |

### 6.2 Neue Dokumente
| Dokument | Inhalt | Priorität |
|----------|--------|-----------|
| ZK-WORLDS-v1.0 | Akt 1 Weltensystem | Hoch |
| ZK-DUN-MECH-v1.0 | Dungeon-Mechaniken | Hoch |
| ZK-DIFF-v1.0 | Schwierigkeitssystem | Mittel |

## 7. Release-Strategie

### 7.1 Release-Planung
- **Alpha**: Geschlossene Testergruppe (50-100 Spieler)
- **Beta**: Offene Beta via TestFlight/Play Beta
- **Release-Demo**: "Chrono-Prolog" (Welt 1) 2 Wochen vor Launch
- **Full Release**: Simultaner Launch auf iOS und Android
- **Post-Launch**: PC-Release 6 Wochen später

### 7.2 Erfolgskriterien
| Metrik | Ziel bei Launch | Ziel nach 6 Monaten |
|--------|----------------|---------------------|
| Demo→Vollversion Konversion | 10% | 15% |
| Bewertung | 4,2+ | 4,5+ |
| Spielzeit/Session | 15 Min | 20 Min |
| DAU | 5.000 | 15.000 |
| 30-Tage-Retention | 25% | 35% |
| IAP-Konversion | 15% | 25% |
| ROI | Break-even in 6 Monaten | Profitabel |

## 8. Ressourcen und Budget

### 8.1 Personalressourcen
- 2 Vollzeit-Programmierer
- 1 Vollzeit-Gamedesigner
- 1 Teilzeit-Artist
- 1 Teilzeit-UX/UI-Designer
- External QA-Team (nach Bedarf)

### 8.2 Technische Infrastruktur
- Unity 6 als Entwicklungsplattform
- GitHub für Versionskontrolle
- Firebase für Backend
- TestFlight/Play Beta für Tests

## Quellendokumente
- ZK-PROJ-v1.0-20250325: Vorherige Projektübersicht
- ZK-TIME-v1.0-20250325: Ursprüngliches Zeitsystem
- ZK-TEST-PLAYTEST-v1.0-20250327: Umfassende Spieltestergebnisse

## Abhängige Dokumente
- ZK-TIME-v1.1-20250327: Aktualisiertes Zeitsystem
- ZK-MAT-v1.1-20250327: Aktualisiertes Materialsystem
- ZK-BAL-v1.1-20250327: Aktualisiertes Balancing-Framework
- ZK-WORLDS-v1.0-20250327: Weltensystem (Akt 1)
- ZK-DUN-MECH-v1.0-20250327: Dungeon-Mechaniken
- ZK-DIFF-v1.0-20250327: Schwierigkeitssystem