# Weltensystem (ZK-WORLDS-COMP-v1.0-20250327)

## Änderungshistorie
- v1.0 (2025-03-27): Komprimierte Version basierend auf Spieltests

## Zusammenfassung
Definiert das Fünf-Welten-System mit elementaren Zuordnungen, Progression und Materialverteilung als Rahmen für alle weltspezifischen Inhalte.

## 1. Weltstruktur

### 1.1 Weltübersicht
| Pos | Welt | Element | Zeitthema | Mechanik | Spielzeit |
|-----|------|---------|-----------|----------|-----------|
| 1 | Zeitwirbel-Tal | Neutral | Zeitbeginn | Zeitrisse | 2,5h |
| 2 | Flammen-Schmiede | Feuer | Verbrennung | DoT-Zeitgewinn | 3h |
| 3 | Eiszeit-Festung | Eis | Verlangsamung | Zeitstasis (40%) | 3,5h |
| 4 | Gewittersphäre | Blitz | Beschleunigung | Chronoresonanz | 4h |
| 5 | Chronos-Nexus | Gemischt | Konvergenz | Elementsymbiose | 5h |

### 1.2 Progression
- **Kampfdauer**: 60s Standard (alle Welten)
- **Gesamtspielzeit**: 18-20h (Erstdurchlauf), 54-60h (alle Klassen)
- **Schwierigkeitszunahme**: Progressive Komplexität, nicht verlängerte Kämpfe
- **Narrative Verbindung**: Zeitbeginn→Formung→Kristallisation→Energetisierung→Vollendung

## 2. Dungeon-Struktur

### 2.1 Dungeon-Standardisierung
- **Pro Welt**: 3 Dungeons (einführend, fortgeschritten, abschließend)
- **Pro Dungeon**: 8-12 Kämpfe + Mini-Boss
- **Welt-Boss**: Im dritten Dungeon jeder Welt
- **Modi**: Normal (Basis), Heroisch (verstärkt), Legendär (kombiniert+50s)

### 2.2 Weltspezifische Parameter

#### 2.2.1 Zeitwirbel-Tal (Neutral)
- **Gegner**: Zeitschleifer, Kristallwächter, Chrono-Anomalien
- **Feldeffekte**: Zeitrisse, Zeitquellen, Schwankender Zeitfluss
- **Materialien**: Ausgeglichene Grundverteilung, Zeitfragmente

#### 2.2.2 Flammen-Schmiede (Feuer)
- **Gegner**: Feuerchronisten, Zeitschmiede, Flammenarchivare
- **Feldeffekte**: Zeitverbrennung (DoT-Kategorien), Zeittemperung
- **DoT-System**: Schwach=0,5s (●), Mittel=1,0s (●●), Stark=2,0s (●●●)

#### 2.2.3 Eiszeit-Festung (Eis)
- **Gegner**: Eischronisten, Zeitvereiser, Eisbarrieren-Spezialisten
- **Feldeffekte**: Zeitstasis (40%), Kristallisierte Zeit
- **Balance**: Reduzierte Zeitdiebstahlresistenz von 50% auf 40%

#### 2.2.4 Gewittersphäre (Blitz)
- **Gegner**: Sturmchronisten, Zeit-Akzeleratoren, Effizienzdämonen
- **Feldeffekte**: Chronoresonanz (+0,5s), Zeitliche Entladung
- **Balance**: Ketteneffekte auf 70% Schadensübertragung reduziert

#### 2.2.5 Chronos-Nexus (Gemischt)
- **Gegner**: Elementarwandler, Zeitechos, Zeit-Archons
- **Feldeffekte**: Elementsymbiose, Temporales Echo, Zeitlinienkonvergenz
- **Materialien**: Alle Elemente, höchste Seltenheitsstufen

## 3. Materialverteilung (70/30-Prinzip)

### 3.1 Verteilungsprinzip
- **Weltspezifisch**: 70% materialien des Weltelements
- **Diversifiziert**: 30% materialien anderer Elemente
- **Mathematische Begründung**: Optimiert für Hauptevolution (~3-4 Karten) + Sekundärevolution (~1-2 Karten)

### 3.2 Material-Akkumulation
| Welt | Gewöhnlich | Ungewöhnlich | Selten | Episch | Legendär | Mythisch |
|------|------------|--------------|--------|--------|----------|----------|
| 1 | 250-300 | 60-70 | - | - | - | - |
| 1-2 | 600-700 | 150-180 | 15-20 | - | - | - |
| 1-3 | 1000-1200 | 250-300 | 40-50 | 2-5 | - | - |
| 1-4 | 1500-1800 | 350-400 | 80-100 | 10-15 | 1-3 | - |
| 1-5 | 2200-2500 | 500-600 | 150-180 | 25-35 | 5-8 | 1-2 |

### 3.3 Evolutionsfortschritt
Nach 5 Welten durchschnittlich:
- 6-8 Karten evolviert (23-31% des Decks)
- 2-3 Karten auf Stufe 3 (höchste)
- 2-3 Karten auf Stufe 2
- 2-3 Karten auf Stufe 1

## 4. Klassenaffinitäten und Balance

### 4.1 Elementar-Affinitäten
| Klasse | Stärkste Welt | Schwächste Welt | Durchschn. Restzeit |
|--------|---------------|-----------------|---------------------|
| Chronomant | Welt 4 (Blitz) | Welt 3 (Eis) | 13-16s |
| Zeitwächter | Welt 3 (Eis) | Welt 4 (Blitz) | 14-17s |
| Schattenschreiter | Welt 4 (Blitz) | Welt 3 (Eis) | 11-14s |

### 4.2 Balance-Anpassungen
- **Welt 3**: Zeitstasis reduziert auf 40% (war 50%)
- **Welt 4**: Chronoresonanz erweitert um +0,5s Zeitgewinn
- **Blitz-Element**: Ketteneffekte auf 70% Schadensübertragung reduziert

## Quellendokumente
- KS-STATUS-v1.0-20250322: Spieldesign-Diskussion 
- ZK-TEST-PLAYTEST-v1.0-20250327: Spieltestergebnisse
- ZK-DOKKOMP-COMP-v1.0-20250325: Kompressionsrichtlinien

## Abhängige Dokumente
- ZK-DUN-MECH-v1.0-20250327: Dungeon-Mechaniken-Details
- ZK-WORLD-*-v1.0-20250327: Weltspezifische Dokumente
- ZK-BAL-UPDATE-v1.1-20250327: Balance-Anpassungen