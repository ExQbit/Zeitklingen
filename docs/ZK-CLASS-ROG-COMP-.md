# Schattenschreiter-Klasse (ZK-CLASS-ROG-COMP-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-26): Initiale Version basierend auf Spieltests und Designdiskussionen
- v1.1 (2025-03-27): Integration des DoT-Kategoriesystems, Zeitstasis-Anpassung (40%), Balancing-Updates

## Zusammenfassung
Der Schattenschreiter ist eine Schurken-Klasse, die Schnelligkeit, Zeitdiebstahl und Momentum-basierte Kombos kombiniert. Charakterisiert durch extrem günstige Karten, 0-Kosten-Ketten und Ausweichmechaniken – optimiert für schnelle Entscheidungen und hohen Kartendurchsatz.

## 1. Klassenidentität

### 1.1 Designphilosophie
- **Temporales Momentum**: Schnelle, verkettete Kartenfolgen mit eskalierender Effizienz
- **Ressourcendiebstahl**: Zeitgewinnung durch Gegnerinteraktion statt Selbstversorgung
- **Evasive Taktiken**: Defensiv durch Ausweichen statt direkter Blockade
- **Hocheffiziente Bursts**: Kurze, intensive Aktionsfenster gefolgt von strategischer Neupositionierung

### 1.2 Psychologische Spielermotivation
- **Achiever**: Befriedigende Kombo-Vollendungen mit sichtbaren Geschwindigkeitsvorteilen
- **Explorer**: Entdeckung optimaler Kartensequenzen und versteckter Synergien
- **Socializer**: Spektakuläre Ketteneffekte und dramatische "Letzte-Sekunde-Rettungen"
- **Killer**: Höchste APM-Anforderungen, Belohnung für technisch anspruchsvolles Spiel

## 2. Deckzusammensetzung (26 Karten)

### 2.1 Kartenverteilung
| Kategorie | Anzahl | Anteil | Zweck |
|-----------|--------|--------|-------|
| Basis-Angriffe | 8 (5+3) | 31% | Primäre Schadensquelle |
| Schattenkarten | 7 (4+3) | 27% | Ausweichen, 0-Kosten-Synergien |
| Zeitdiebstahl | 6 (3+3) | 23% | Ressourcengewinnung |
| Kettenkarten | 4 | 15% | Kombo-Verbindungen |
| Signaturkarten | 1 | 4% | Wendepunkt-Fähigkeiten |

### 2.2 Basisangriffe
| Karte | Anzahl | Zeitkosten | Effekt |
|-------|--------|------------|--------|
| Schattendolch | 5 | 1,0s | 3 Schaden |
| Giftklinge | 3 | 1,5s | 2 Schaden + 1 DoT (Schwach: 0,5s) |

### 2.3 Schattenkarten
| Karte | Anzahl | Zeitkosten | Effekt |
|-------|--------|------------|--------|
| Schleier | 4 | 0,5s | Nächster Angriff verfehlt |
| Schattenform | 3 | 1,5s | Nächste 2 Angriffe verfehlen, +0,5s pro vermiedenem Angriff |

### 2.4 Zeitdiebstahlkarten
| Karte | Anzahl | Zeitkosten | Effekt |
|-------|--------|------------|--------|
| Zeitdiebstahl | 3 | 1,0s | Stiehlt 0,5s vom Gegner |
| Temporaler Raub | 3 | 1,5s | Stiehlt 1,0s vom Gegner, verursacht 2 Schaden |

### 2.5 Kettenkarten
| Karte | Anzahl | Zeitkosten | Effekt |
|-------|--------|------------|--------|
| Schattenschritt | 4 | 1,0s | +25% Effekt für nächste Karte, +15% für übernächste wenn Angriff |

### 2.6 Signaturkarten
| Karte | Anzahl | Zeitkosten | Effekt |
|-------|--------|------------|--------|
| Zeitsprung | 1 | 3,0s | Stiehlt 1,5s und zieht 2 Karten |
| Schattensturm | 1 | 4,0s | 8 Schaden auf alle Gegner, +0,5s pro Treffer |

## 3. Klassenspezifische Mechaniken

### 3.1 Momentum-System
- Jede gespielte Karte generiert 1 Momentum (max. 5)
- Bei 3+ Momentum: Schattenkarten kosten 0 Zeit
- Bei 5 Momentum: Nächste Karte erhält +50% Effektivität
- Momentum verfällt nach 3s Inaktivität

### 3.2 Schattensynergie
- Nach einer Schattenkarte: Nächste Angriffskarte kostet 0 Zeit
- Nach zwei Schattenkarten: Nächste Angriffskarte kostet 0 Zeit und zieht 1 Karte
- Nach drei Schattenkarten: Zusätzlich +30% Schadensbonus

### 3.3 Zeitsplitter (Passiv)
- Gegner unter 30% Gesundheit: Zeitdiebstahl +50% effektiver
- Ab 3 Zeitdiebstahl-Effekten im Kampf: Zeitsprung-Karte wird in die Hand gegeben
- Maximaler Zeitdiebstahlgewinn: 12s pro Kampf

## 4. Evolutionspfade

### 4.1 Feuer-Pfad ("Blutschatten")
- **Strategie**: "Brennen und Stehlen", DoT-fokussiert
- **Stärken**: Höchster nachhaltiger Schaden, Zeitgewinn durch DoT
- **Schwächen**: Langsamer anfänglicher Schaden, Ramp-Up-Zeit
- **Beispiel**: Schattendolch → Brennender Dolch (3+1 DoT (Schwach: 0,5s)) → Ascheklinge (4+2 DoT (Mittel: 1,0s)) → Höllenstich (5+4 DoT (Stark: 2,0s))

### 4.2 Eis-Pfad ("Nebelwandler")
- **Strategie**: "Ausweichen und Überleben"
- **Stärken**: Höchste Überlebensfähigkeit, Timing-Vorteil
- **Schwächen**: Geringerer Direktschaden, höhere Komplexität
- **Beispiel**: Schleier → Nebelschleier (2 Angriffe verfehlen) → Frostschleier (3 Angriffe verfehlen) → Eisnebel (4 Angriffe verfehlen)

### 4.3 Blitz-Pfad ("Stromdieb")
- **Strategie**: "Geschwindigkeit und Effizienz"
- **Stärken**: Höchster Kartendurchsatz, extreme Kombo-Potenziale
- **Schwächen**: Fehleranfällig, geringe Einzelkarteneffekte
- **Beispiel**: Schattendolch → Blitzdolch (0s nach Schattenkarte) → Sturmklinge (+1 Karte bei 0-Kosten) → Gewitterstich (+2 Karten, +1 Momentum bei 0-Kosten)

## 5. Kartenkombo-Strategien

### 5.1 "Schattenblitz"-Kombo (Effizienz-Kombo)
- **Komponenten**: Schleier (0,5s) → Blitzdolch (0s) → Schattenschritt (1,0s) → Giftklinge (1,5s)
- **Mechanik**: Ausweichen → 0-Kosten durch Schattenkarte → Effektboost → Verstärkter DoT
- **Gesamtkosten**: 3,0s für 4 Karten
- **Zeitgewinn**: 0,5s (durch schwachen DoT)

### 5.2 "Zeitdiebstahl-Kette" (Ressourcen-Kombo)
- **Komponenten**: Schattenschritt (1,0s) → Zeitdiebstahl (1,0s) → Schleier (0,5s) → Blitzdolch (0s)
- **Mechanik**: +25% Zeitdiebstahl → Verstärkter Diebstahl (0,62s) → Ausweichen → 0-Kosten-Abschluss
- **Gesamtkosten**: 2,5s für 4 Karten
- **Zeitgewinn**: 0,62s (durch verstärkten Zeitdiebstahl)

### 5.3 "Schattensturm" (Burst-Kombo)
- **Komponenten**: Schattenschritt (1,0s) → Schattensturm (4,0s) → Zeitsprung (3,0s)
- **Mechanik**: Effektboost → Verstärkter AoE-Schaden → Kartenziehung
- **Gesamtkosten**: 8,0s für 3 Karten
- **Zeitgewinn**: 3-5s (abhängig von Zielanzahl)

## 6. Welt-spezifische Interaktionen

### 6.1 Welt 1: Zeitwirbel-Tal
- **Stärke**: Durchschnittlich
- **Optimale Evolution**: Schattendolch → Blitzdolch (Tempo-Fokus)
- **Besondere Synergie**: Zeitriss-Aktivierung durch Schattenschritt-Karten
- **Restzeit-Durchschnitt**: 10s (knapp aber ausreichend)

### 6.2 Welt 2: Flammen-Chrono-Schmiede
- **Stärke**: Überdurchschnittlich
- **Optimale Evolution**: Giftklinge → Blutklinge, Schleier → Rauchschleier (Feuer-Synergien)
- **Besondere Synergie**: DoT-Zeitgewinn-Kategoriesystem optimal genutzt
- **Restzeit-Durchschnitt**: 11s (verbessert durch DoT-Zeitgewinne)

### 6.3 Welt 3: Eiszeit-Festung
- **Stärke**: Unterdurchschnittlich
- **Anpassung**: Zeitstasis-Mechanik nun 40% (statt 50%) Zeitdiebstahlreduktion - weniger einschränkend
- **Kompensationsstrategie**: Mehr Fokus auf direkten Schaden statt Zeitdiebstahl
- **Restzeit-Durchschnitt**: 9s (niedrigster Wert, aber funktional)

### 6.4 Welt 4: Gewittersphäre
- **Stärke**: Herausragend
- **Optimale Evolution**: Blitz-Pfad maximieren (Sturmklinge → Gewitterstich)
- **Besondere Synergie**: Chronoresonanz und Kartenzugmechaniken perfekt komplementär
- **Restzeit-Durchschnitt**: 14s (ausgezeichnet dank Synergien)

### 6.5 Welt 5: Chronos-Nexus
- **Stärke**: Überdurchschnittlich
- **Optimale Evolution**: Temporales Echo nutzen für zweifache 0-Kosten-Karten
- **Besondere Synergie**: Elementsymbiose zwischen Blitz- und Feuer-Karten
- **Restzeit-Durchschnitt**: 13s (solide)

## 7. DoT-Kategorie-System

### 7.1 Integration bei Feuer-Karten
| Karte | DoT-Wert | Kategorie | Zeitgewinn |
|-------|----------|-----------|------------|
| Giftklinge | 1/Tick | Schwach | 0,5s |
| Blutklinge | 3/Tick | Mittel | 1,0s |
| Seuchenklinge | 4/Tick | Stark | 2,0s |
| Todesklinge | 5/Tick | Stark | 2,0s |

### 7.2 Visuelle Darstellung
- **Schwacher DoT**: Ein Punkt (●), Hellgelb, +0,5s Zeitgewinn-Anzeige
- **Mittlerer DoT**: Zwei Punkte (●●), Orange, +1,0s Zeitgewinn-Anzeige
- **Starker DoT**: Drei Punkte (●●●), Dunkelorange/Rot, +2,0s Zeitgewinn-Anzeige

## 8. Evolutionspriorität

### 8.1 Anfangsphase (0-5h)
1. Schattendolch → Blitzdolch (Tempo-Optimierung)
2. Schleier → Rauchschleier (Defensiv-Option)

### 8.2 Mittlere Phase (5-15h)
1. Blitzdolch → Sturmklinge (Karteneffizienz)
2. Zeitdiebstahl → Blitzraub (Ressourcen-Optimierung)

### 8.3 Spezialisierungsphase (15h+)
- **Optimal für Anfänger**: Eis-Pfad (defensiver, vergebender)
- **Optimal für Experten**: Blitz-Pfad (höchste Kartenrotation)
- **Optimal für Bossgegner**: Feuer-Pfad (höchster konstanter Schaden)

## 9. UI/UX-Optimierung

### 9.1 Momentum-Visualisierung
- Momentum-Leiste mit 5 Segmenten unterhalb der Zeit-Anzeige
- Farbliche Progression: Grau (0) → Blau (1-2) → Lila (3-4) → Leuchtend (5)
- Pulsierende Animation bei 3+ Momentum (0-Kosten-Indikator)

### 9.2 0-Kosten-Visualisierung
- Temporäre Umrandung von Angriffskarten nach Schattenkarten-Nutzung
- Pulsierender Kostenindikator (0s) mit eigener Animation
- Verbindungslinien zwischen Schattenkarten und darauf folgenden 0-Kosten-Karten

### 9.3 Touch-Optimierung
- Schattenkarten immer priorisiert am unteren Rand für schnellen Zugriff
- Schnellzugriff-Zone für Zeitdiebstahlkarten
- "Quick-Combo"-Gesten für häufige Kartensequenzen

## Quellendokumente
- ZK-CLASS-ROG-CARDS-v1.1-20250327: Detaillierte Karten des Schattenschreiters
- ZK-EVO-v1.1-20250327: Evolutionssystem
- ZK-TIME-v1.1-20250327: Zeitsystem mit DoT-Kategorien
- ZK-WORLDS-v1.0-20250327: Weltensystem und Interaktionen

## Abhängige Dokumente
- ZK-BAL-UPDATE-v1.1-20250327: Balance-Anpassungen
- ZK-DUN-MECH-v1.0-20250327: Kampffeld-Mechaniken
- ZK-MAT-v1.1-20250327: Material-Verteilungssystem