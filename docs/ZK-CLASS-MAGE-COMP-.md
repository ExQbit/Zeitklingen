# Chronomant-Klasse (ZK-CLASS-MAGE-COMP-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-25): Komprimierte Version von ZK-CLASS-MAGE-v1.0-20250325
- v1.1 (2025-03-27): Integration des DoT-Kategoriesystems, Anpassung der Blitz-Ketteneffektivität auf 70%, Aktualisierung der Weltaffinitäten

## Zusammenfassung
Der Chronomant ist eine Magier-Klasse, die Zeitmanipulation mit arkaner Macht verbindet. Charakterisiert durch Zeitkontrolle, strategische Tiefe und elementare Evolutionspfade (Feuer/Eis/Blitz), balanciert er zwischen Offensivzaubern, Kontrolle und Ressourcenmanagement. V1.1 implementiert das DoT-Kategoriensystem und passt die Klassenbalance mit den Weltmechaniken an.

## 1. Klassenidentität

### 1.1 Designphilosophie
- **Zeitliche Dualität**: Manipulation eigener und gegnerischer Zeit
- **Strategische Tiefe durch Einfachheit**: Deterministische Effekte, Synergiepotential
- **Eskalierendes Machtwachstum**: Progression vom Lehrling zum Zeitmeister

### 1.2 Psychologische Spielermotivation
- **Achiever**: Klare Evolutionspfade, sichtbare Fortschritte
- **Explorer**: Versteckte Synergien, Elementarpfadentdeckung
- **Socializer**: Visuell eindrucksvolle Effekte
- **Killer**: Technisch anspruchsvolle Kombos, Timing

## 2. Deckzusammensetzung (26 Karten)

### 2.1 Kartenverteilung
| Kategorie | Anzahl | Anteil | Zweck |
|-----------|--------|--------|-------|
| Basiszauber | 12 (8+4) | 46% | Primäre Schadensquelle |
| Zeitmanipulation | 10 (3+3+2+2) | 38% | Kontrolle, Effizienz |
| Signaturkarten | 4 (1+1+1+1) | 16% | Identitätsträger, Spezialeffekte |

### 2.2 Basiszauber
| Karte | Anzahl | Zeitkosten | Effekt |
|-------|--------|------------|--------|
| Arkaner Stoß | 8 | 1,5s | 4 Schaden |
| Arkane Projektion | 4 | 2s | 5 Schaden |

### 2.3 Zeitmanipulationskarten
| Karte | Anzahl | Zeitkosten | Effekt |
|-------|--------|------------|--------|
| Verzögern | 3 | 2s | +2s Gegnerverzögerung |
| Beschleunigen | 3 | 2,5s | Nächste 2 Karten -0,5s |
| Zeitschild | 2 | 2s | Blockt nächsten Angriff (3s) |
| Temporale Riftrückgewinnung | 2 | 3s | +2s bei Gegnertötung |

### 2.4 Signaturkarten
| Karte | Anzahl | Zeitkosten | Effekt |
|-------|--------|------------|--------|
| Arkane Intelligenz | 1 | 1s | Ziehe 2 Karten |
| Zeitverzerrung | 1 | 4s | -30% Gegnergeschwindigkeit (3s) |
| Elementarkonvergenz | 1 | 2,5s | +50% Elementarschaden |
| Chronofluktuation | 1 | 5s | +3s, 10 AoE-Schaden, +1 Karte |

## 3. Klassenspezifische Mechaniken

### 3.1 Arkane Vorhersehung (Passiv)
- Zu Kampfbeginn: Ansehen und Neuanordnen der obersten 3 Karten
- Reduziert Varianz in den ersten 3 Zügen um ~40%
- Strategisches Element für Spieleinstieg

### 3.2 Zeitboni-System
- Gegner unter 20s besiegt: +2s Zeitbonus
- Bei 3 Gegnern: maximal 6s Zeitgewinn möglich
- ~20% der Gesamtzeit durch effizientes Spiel gewinnbar

## 4. Evolutionspfade

### 4.1 Feuer-Pfad ("Chronopyromant")
- **Strategie**: "Verbrennen statt Kontrollieren", hoher DoT
- **Stärken**: Maximaler Einzelzielschaden, Burst-Damage
- **Schwächen**: Ineffizienter gegen Gruppen, zeitdiebstahlanfällig
- **Beispiel**: Arkaner Stoß → Funke → Feuerstoß → Feuerlanze
- **DoT-Kategorien** und Zeitgewinne:
  - **Schwach** (Funke): 1 Schaden/Tick = 0,5s Zeitgewinn
  - **Mittel** (Feuerstoß): 2 Schaden/Tick = 1,0s Zeitgewinn
  - **Stark** (Feuerlanze): 4+ Schaden/Tick = 2,0s Zeitgewinn

### 4.2 Eis-Pfad ("Chronofrost")
- **Strategie**: "Verlangsamen und Kontrollieren"
- **Stärken**: Kumulative Slow-Effekte (bis 80-90%), Sicherheit
- **Schwächen**: Geringerer Direktschaden, längere Kämpfe
- **Beispiel**: Arkaner Stoß → Frosthauch (3+15% Slow) → Eissplitter (5+25% Slow) → Frostexplosion (6+35% AoE Slow)

### 4.3 Blitz-Pfad ("Blitzchronist")
- **Strategie**: "Geschwindigkeit und Verkettung"
- **Stärken**: Ketteneffekte, Effizienz, Tempo, Multi-Target
- **Schwächen**: Geringerer Einzelzielschaden, weniger Kontrolle
- **Beispiel**: Arkaner Stoß → Statische Entladung → Kettenblitz → Blitzentladung
- **Angepasste Ketteneffektivität**: 70% Schadensübertragung (reduziert von 80%)

## 5. Zeitmanipulationskarten-Evolution

### 5.1 Verzögern-Evolution
- **Basis**: Verzögern+ (3s Verzögerung) → Zeitverzerrung+ (3s + -20% Schaden) → Zeitparadoxon (4s + 30% Reflexion)
- **Spezial**: Chronomantische Verzögerung (alle -1,5s) → Temporale Ruptur (alle -2s + 0,5s zurück) → Zeitstillstand (2s Stopp + 1s zurück)

### 5.2 Beschleunigen-Evolution
- **Basis**: Beschleunigen+ (3 Karten -0,5s) → Zeitschub (4 Karten -0,5s) → Zeitfluss (3 Karten -1s)
- **Spezial**: Temporale Eile (4s lang alle -0,5s) → Arkane Beschleunigung (5s alle -0,5s + 1 Karte) → Zeitrausch (5s alle -1s + 2 Karten)

### 5.3 Chronofluktuation-Evolution
- **Basis**: Chronofluktuation+ (3,5s + 12 AoE) → Zeitbruch (4s + 15 AoE) → Chronoriss (5s + 18 AoE + 30% Slow)
- **Spezial**: Temporale Erschütterung (4s + Anti-Zeitdiebstahl) → Chronometeor (6s + 2s Stopp + Anti-Zeitdiebstahl)

## 6. Kartenkombo-Strategien

### 6.1 "Zeitschleife" (Tempo-Kombo)
- **Komponenten**: Beschleunigungseffekte → Kartenziehung → Effiziente Blitzkarten
- **Mechanik**: Positive Rückkopplungsschleife für Kartenrotation
- **Effekt**: 7-10 Karten in 10 Sekunden, dramatisch erhöhte APM

### 6.2 "Zeitstillstand" (Kontroll-Kombo)
- **Komponenten**: Verzögerungseffekte + Eisevolution + Zeitverzerrung
- **Mechanik**: Kumulative Verlangsamung und Verzögerung
- **Effekt**: Gegner auf ~25% Normalgeschwindigkeit reduziert

### 6.3 "Zeitexplosion" (Burst-Kombo)
- **Komponenten**: Elementarkonvergenz + Feuer-DoT + Chronofluktuation
- **Mechanik**: Schadensmaximierung mit Zeitrückgewinn
- **Effekt**: 40-50 Gesamtschaden mit 3-5s Zeitrückgewinn

## 7. Weltinteraktionen

### 7.1 Welt 1: Zeitwirbel-Tal
- **Affinität**: Neutral (Ausgeglichen)
- **Feldeffekt-Interaktion**: Zeitrisse bieten strategische Zeitgewinne
- **Effektive Strategie**: Ausgewogenes Spiel mit Fokus auf Grundlagen
- **Restzeit-Durchschnitt**: 12s

### 7.2 Welt 2: Flammen-Chrono-Schmiede
- **Affinität**: Stark (Feuer-Pfad besonders effektiv)
- **Feldeffekt-Interaktion**: Zeitverbrennung maximiert Nutzen des DoT-Kategoriensystems
- **Effektive Strategie**: Feuer-Evolutionen für Zeitrückgewinne durch DoTs
- **Restzeit-Durchschnitt**: 15s

### 7.3 Welt 3: Eiszeit-Festung
- **Affinität**: Moderat
- **Feldeffekt-Interaktion**: 40% Zeitstasis-Effekt begrenzt Zeitdiebstahl-Anfälligkeit
- **Effektive Strategie**: Eis-Evolutionen für kumulative Verlangsamung
- **Restzeit-Durchschnitt**: 13s

### 7.4 Welt 4: Gewittersphäre
- **Affinität**: Stark (Blitz-Pfad besonders effektiv)
- **Feldeffekt-Interaktion**: Chronoresonanz mit +0,5s Zeitgewinn verstärkt Effektivität
- **Effektive Strategie**: Blitz-Evolutionen für Ketteneffekte und Kartenziehung
- **Restzeit-Durchschnitt**: 18s

### 7.5 Welt 5: Chronos-Nexus
- **Affinität**: Stark (Multi-Elementar-Synergien)
- **Feldeffekt-Interaktion**: Elementsymbiose fördert Wechsel zwischen Elementarpfaden
- **Effektive Strategie**: Abwechslung zwischen Feuer-, Eis- und Blitzevolutionen
- **Restzeit-Durchschnitt**: 16s

## 8. UI/UX-Optimierung

### 8.1 Timer-Visualisierung
- Farbkodierung: >30s (blau) → 15-30s (gelb) → <15s (rot)
- Gegneraktionen: Form + Farbe + Position
- Formkodierung: Kreis = Angriff, Quadrat = Zeitdiebstahl, Dreieck = Debuff

### 8.2 DoT-Visualisierung
- **Schwacher DoT**: Ein Punkt (●), Hellgelb/Gold, +0,5s angezeigt
- **Mittlerer DoT**: Zwei Punkte (●●), Orange, +1,0s angezeigt
- **Starker DoT**: Drei Punkte (●●●), Dunkelorange/Rot, +2,0s angezeigt

### 8.3 Touch-Optimierung
- 25% größere Touchflächen für kritische Karten
- "Schnelle Auswahl"-Zone am unteren Bildschirmrand
- Prioritätsbereich bei Überlappung

## Quellendokumente
- ZK-CLASS-MAGE-v1.1-20250327: Original Magier-Klassendesign
- ZK-TIME-v1.1-20250327: Aktualisiertes Zeitsystem mit DoT-Kategorien
- ZK-BAL-v1.1-20250327: Aktualisiertes Balancing-Framework
- ZK-TEST-PLAYTEST-v1.0-20250327: Spieltestergebnisse

## Abhängige Dokumente
- ZK-CLASS-MAGE-CARDS-v1.1-20250327: Detaillierte Chronomanten-Kartendefinitionen
- ZK-CLASS-MAGE-EVO-v1.1-20250327: Evolutionspfade für Chronomanten
- ZK-WORLDS-v1.0-20250327: Weltensystem und Interaktionen
- ZK-DUN-MECH-v1.0-20250327: Kampffeld-Effekte