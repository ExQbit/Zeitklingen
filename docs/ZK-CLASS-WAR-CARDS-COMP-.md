# Zeitwächter-Karten (ZK-CLASS-WAR-CARDS-COMP-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-26): Initiale Version der Zeitwächter-Kartendefinitionen
- v1.1 (2025-03-27): DoT-Kategoriesystem integriert, Chronoresonanz mit +0,5s Zeitgewinn, Zeitstasis auf 40% reduziert

## Zusammenfassung
Detaillierte Spezifikation aller Zeitwächter-Karten, kategorisiert nach Basisangriffen, Verteidigungskarten, Zeitmanipulationskarten und Signaturkarten. Die Version 1.1 integriert das neue DoT-Kategoriesystem, aktualisierte Chronoresonanz-Mechanik sowie die angepasste Zeitstasis-Interaktion.

## 1. Basisangriffe

### 1.1 Klingenschlag (CARD-WAR-BLADESTRIKE)
- **Basis**: 2,5s, 5 Schaden
- **Startdeck**: 8 Karten
- **Evolution**: 3 Elementarpfade

#### 1.1.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | DoT-Kategorie | Materialien |
|-------|-----|--------|--------|--------------|-------------|
| 1: Flammenklinge | CARD-WAR-FLAMEBLADE | 2,5s | 4 + 2 DoT | Schwach (0,5s) | 1× Feuerkern, 3× Funkenfragment |
| 2: Rächerklinge | CARD-WAR-AVENGINGEDGE | 3,0s | 5 + 3 DoT, +1 Schaden pro Block | Mittel (1,0s) | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern |
| 3: Vergeltungsklinge | CARD-WAR-RETRIBUTIONBLADE | 3,5s | 6 + 4 DoT, +2 Schaden pro Block | Stark (2,0s) | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz |

#### 1.1.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Eisklinge | CARD-WAR-ICEBLADE | 2,5s | 4 + 15% Slow | 1× Eiskern, 3× Eissplitter |
| 2: Frostklinge | CARD-WAR-FROSTBLADE | 3,0s | 5 + 25% Slow, -20% Zeitdiebstahl | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Gletscherklinge | CARD-WAR-GLACIERBLADE | 3,5s | 6 + 35% Slow, -30% Zeitdiebstahl | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 1.1.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Sturmklinge | CARD-WAR-STORMBLADE | 2,0s | 4, -0,5s nächste Verteidigungskarte | 1× Blitzkern, 3× Funkenstaub |
| 2: Gewitterklinge | CARD-WAR-TEMPESTBLADE | 2,5s | 5, -1,0s nächste Verteidigungskarte | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Blitzklinge | CARD-WAR-LIGHTNINGBLADE | 3,0s | 6, -1,5s nächste Verteidigungskarte | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

### 1.2 Schildstoß (CARD-WAR-SHIELDBASH)
- **Basis**: 2,5s, 4 Schaden + 15% Zeitdiebstahlschutz (2s)
- **Startdeck**: 4 Karten
- **Evolution**: 3 Elementarpfade

#### 1.2.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | DoT-Kategorie | Materialien |
|-------|-----|--------|--------|--------------|-------------|
| 1: Flammenstoß | CARD-WAR-FLAMEBASH | 2,5s | 4 + 1 DoT, 15% Zeitdiebstahlschutz (3s) | Schwach (0,5s) | 1× Feuerkern, 3× Funkenfragment |
| 2: Glutstoß | CARD-WAR-EMBERBASH | 3,0s | 5 + 2 DoT, 20% Zeitdiebstahlschutz (3s) | Schwach (0,5s) | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern |
| 3: Feuerstoß | CARD-WAR-FIREBASH | 3,5s | 6 + 3 DoT, 25% Zeitdiebstahlschutz (3s) | Mittel (1,0s) | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz |

#### 1.2.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Frostschildstoß | CARD-WAR-FROSTSHIELDBASH | 2,5s | 3 + 10% Slow, 20% Zeitdiebstahlschutz (3s) | 1× Eiskern, 3× Eissplitter |
| 2: Eisschildstoß | CARD-WAR-ICESHIELDBASH | 3,0s | 4 + 15% Slow, 25% Zeitdiebstahlschutz (4s) | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Gletscherschildstoß | CARD-WAR-GLACIERSHIELDBASH | 3,5s | 5 + 20% Slow, 30% Zeitdiebstahlschutz (5s) | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 1.2.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Ketteneffekt | Materialien |
|-------|-----|--------|--------|-------------|------------|
| 1: Sturmschleuder | CARD-WAR-STORMTOSS | 2,0s | 4 + Ketteneffekt (1), 15% Zeitdiebstahlschutz (2s) | 70% Übertragung | 1× Blitzkern, 3× Funkenstaub |
| 2: Gewitterschlag | CARD-WAR-TEMPESTBASH | 2,5s | 5 + Ketteneffekt (1), 15% Zeitdiebstahlschutz (3s) | 70% Übertragung | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Blitzschlag | CARD-WAR-LIGHTNINGBASH | 3,0s | 6 + Ketteneffekt (2), 15% Zeitdiebstahlschutz (3s) | 70% Übertragung | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

## 2. Verteidigungskarten

### 2.1 Zeitschild (CARD-WAR-TIMESHIELD)
- **Basis**: 2,5s, Blockt nächsten Angriff (4s) + 0,5s zurück
- **Startdeck**: 4 Karten
- **Evolution**: 3 Elementarpfade

#### 2.1.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Flammenschild | CARD-WAR-FLAMESHIELD | 2,5s | Blockt nächsten Angriff (4s), Reflektiert 2 Schaden | 1× Feuerkern, 3× Funkenfragment |
| 2: Feuerbarriere | CARD-WAR-FIREBARRIER | 3,0s | Blockt nächsten Angriff (4s), Reflektiert 4 Schaden | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern |
| 3: Infernorüstung | CARD-WAR-INFERNOARMOR | 3,5s | Blockt nächsten Angriff (5s), Reflektiert 6 Schaden | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz |

#### 2.1.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Frostschild | CARD-WAR-FROSTSHIELD | 2,5s | Blockt nächsten Angriff (5s), +1,0s zurück | 1× Eiskern, 3× Eissplitter |
| 2: Eisbarriere | CARD-WAR-ICEBARRIER | 3,0s | Blockt nächsten Angriff (6s), +1,0s zurück | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Permafrostschild | CARD-WAR-PERMAFROSTSHIELD | 3,5s | Blockt nächsten Angriff (7s), +1,5s zurück | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 2.1.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Sturmschild | CARD-WAR-STORMSHIELD | 2,0s | Blockt nächsten Angriff (4s), +1 Karte ziehen | 1× Blitzkern, 3× Funkenstaub |
| 2: Energieschild | CARD-WAR-ENERGYSHIELD | 2,5s | Blockt nächsten Angriff (4s), +1 Karte ziehen, diese kostet -0,5s | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Blitzschild | CARD-WAR-LIGHTNINGSHIELD | 3,0s | Blockt nächsten Angriff (4s), +2 Karten ziehen, beide kosten -0,5s | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

### 2.2 Zeitbarriere (CARD-WAR-TIMEBARRIER)
- **Basis**: 3,5s, -30% Zeitdiebstahl (5s)
- **Startdeck**: 1 Karte
- **Evolution**: Zeitbarriere+→Temporale Kuppel→Chronomantische Sphäre

### 2.3 Temporale Rüstung (CARD-WAR-TEMPORALARMOR)
- **Basis**: 3,0s, Reflektiert 25% des nächsten Zeitdiebstahls
- **Startdeck**: 1 Karte
- **Evolution**: Temporale Rüstung+→Chrono-Plattenpanzer→Zeitdistorsionsrüstung

## 3. Zeitmanipulationskarten

### 3.1 Verzögern (CARD-WAR-DELAY)
- **Basis**: 2,5s, +3s Gegnerverzögerung
- **Startdeck**: 2 Karten
- **Evolution**: 3 Elementarpfade

#### 3.1.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Verzögern+ | CARD-WAR-DELAY-PLUS | 2,5s | +3,5s Gegnerverzögerung | 1× Zeitfragment, 1× Funkenfragment |
| 2: Zeitbremse | CARD-WAR-TIMEBRAKE | 3,0s | +4,0s Gegnerverzögerung, +1 Schaden bei nächstem Angriff | 1× Zeitkristall, 2× Vulkanessenz |
| 3: Zeitstopp | CARD-WAR-TIMESTOP | 3,5s | +4,5s Gegnerverzögerung, +2 Schaden bei nächsten 2 Angriffen | 1× Zeitessenz, 1× Reiner Feuerkern |

#### 3.1.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Zeitfrost | CARD-WAR-TIMEFROST | 2,5s | +3,0s Gegnerverzögerung, 15% Slow (2s) | 1× Zeitfragment, 1× Eissplitter |
| 2: Zeiteisfall | CARD-WAR-TIMEICEFALL | 3,0s | +3,5s Gegnerverzögerung, 25% Slow (3s) | 1× Zeitkristall, 2× Gefrorene Träne |
| 3: Zeitgletscher | CARD-WAR-TIMEGLACIER | 3,5s | +4,0s Gegnerverzögerung, 35% Slow (4s) | 1× Zeitessenz, 1× Reiner Eiskern |

#### 3.1.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Zeitblitz | CARD-WAR-TIMELIGHTNING | 2,0s | +2,5s Gegnerverzögerung, -0,5s für nächste Karte | 1× Zeitfragment, 1× Funkenstaub |
| 2: Zeitdonnerschlag | CARD-WAR-TIMETHUNDER | 2,5s | +3,0s Gegnerverzögerung, -0,5s für nächste 2 Karten | 1× Zeitkristall, 2× Gewitteressenz |
| 3: Zeitgewitter | CARD-WAR-TIMESTORM | 3,0s | +3,5s Gegnerverzögerung, -0,5s für nächste 3 Karten | 1× Zeitessenz, 1× Reiner Blitzkern |

### 3.2 Zeitliche Effizienz (CARD-WAR-TEMPORALEFFICIENCY)
- **Basis**: 3,0s, Nächste Verteidigungskarte -1,0s
- **Startdeck**: 2 Karten
- **Evolution**: 3 Elementarpfade

#### 3.2.1 Feuer-Pfad ("Zeitverbrennung")
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Zeitverbrennung | CARD-WAR-TIMEBURN | 3,0s | Nächste Angriffskombo +30% Effekt | 1× Feuerkern, 3× Funkenfragment |
| 2: Zeitinferno | CARD-WAR-TIMEINFERNO | 3,5s | Nächste 2 Angriffskombos +30% Effekt | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern |
| 3: Zeitfeuerwerk | CARD-WAR-TIMEFIREWORKS | 4,0s | Nächste 3 Angriffskombos +30% Effekt | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz |

#### 3.2.2 Eis-Pfad ("Zeitstasis")
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Zeitstasis | CARD-WAR-TIMESTASIS | 3,0s | Nächste Verteidigungskarte -1,0s, Dauer +50% | 1× Eiskern, 3× Eissplitter |
| 2: Zeitgefängnis | CARD-WAR-TIMEPRISON | 3,5s | Nächste 2 Verteidigungskarten -1,0s, Dauer +50% | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Zeitkristallisation | CARD-WAR-TIMECRYSTALLIZATION | 4,0s | Nächste 3 Verteidigungskarten -1,0s, Dauer +50% | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 3.2.3 Blitz-Pfad ("Zeitbeschleunigung")
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Zeitbeschleunigung | CARD-WAR-TIMEACCELERATION | 2,5s | Für die nächsten 5s kosten alle Karten -0,5s | 1× Blitzkern, 3× Funkenstaub |
| 2: Zeitsprint | CARD-WAR-TIMESPRINT | 3,0s | Für die nächsten 5s kosten alle Karten -1,0s | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Zeitrausch | CARD-WAR-TIMERUSH | 3,5s | Für die nächsten 8s kosten alle Karten -1,0s | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

## 4. Signaturkarten

### 4.1 Ewige Wacht (CARD-WAR-ETERNALWATCH)
- **Basis**: 3,0s, Nächste 2 Schilde kosten -50% Zeit
- **Startdeck**: 1 Karte
- **Evolution**: Verstärkte Wacht→Unendliche Wacht

### 4.2 Zeitwächter-Fokus (CARD-WAR-WARDERFOCUS)
- **Basis**: 2,0s, +1,5s Zeitgewinn bei erfolgreicher Verteidigung
- **Startdeck**: 1 Karte
- **Evolution**: Zeitwächter-Fokus+→Zeitwächter-Konzentration

### 4.3 Temporaler Konter (CARD-WAR-TEMPORALCOUNTER)
- **Basis**: 4,0s, Reflektiert nächsten Zeitdiebstahl + 6 Schaden
- **Startdeck**: 1 Karte
- **Evolution**: 3 Elementarpfade

#### 4.3.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | DoT-Kategorie | Materialien |
|-------|-----|--------|--------|--------------|-------------|
| 1: Feuerkonter | CARD-WAR-FIRECOUNTER | 4,0s | Reflektiert nächsten Zeitdiebstahl + 8 Schaden | - | 1× Zeitessenz, 1× Feuerkern |
| 2: Infernaler Gegenschlag | CARD-WAR-INFERNALCOUNTERSTRIKE | 4,5s | Reflektiert nächsten Zeitdiebstahl + 10 Schaden + 3 DoT | Mittel (1,0s) | 1× Zeitkern, 1× Reiner Feuerkern |

#### 4.3.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Frostkonter | CARD-WAR-FROSTCOUNTER | 4,0s | Reflektiert nächsten Zeitdiebstahl + 6 Schaden + 25% Slow (3s) | 1× Zeitessenz, 1× Eiskern |
| 2: Gletscherriposte | CARD-WAR-GLACIERRIPOSTE | 4,5s | Reflektiert nächsten Zeitdiebstahl + 8 Schaden + 40% Slow (5s) | 1× Zeitkern, 1× Reiner Eiskern |

#### 4.3.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Blitzkonter | CARD-WAR-LIGHTNINGCOUNTER | 3,5s | Reflektiert nächsten Zeitdiebstahl + 6 Schaden, Ziehe 1 Karte | 1× Zeitessenz, 1× Blitzkern |
| 2: Gewittergegenschlag | CARD-WAR-STORMCOUNTERSTRIKE | 4,0s | Reflektiert nächsten Zeitdiebstahl + 8 Schaden, Ziehe 2 Karten | 1× Zeitkern, 1× Reiner Blitzkern |

### 4.4 Zeitfestung (CARD-WAR-TIMEFORTRESS)
- **Basis**: 5,0s, +4s, 30% Zeitdiebstahlreduktion (6s), +1 Karte
- **Startdeck**: 1 Karte
- **Evolution**: 3 Elementarpfade

#### 4.4.1 Feuer-Pfad ("Zeitkampfstellung")
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Zeitkampfstellung | CARD-WAR-TIMEWARSTAND | 5,0s | +4s, 25% Zeitdiebstahlreduktion (6s), +1 Karte, Nächste Angriffskombo +50% Schaden | 1× Zeitkern, 1× Reiner Feuerkern |
| 2: Zeitkriegsrüstung | CARD-WAR-TIMEWARARMOR | 6,0s | +5s, 30% Zeitdiebstahlreduktion (8s), +2 Karten, Nächste 2 Angriffskombos +50% Schaden | 1× Reiner Zeitkern, 1× Ewige Flamme |

#### 4.4.2 Eis-Pfad ("Zeitbastion")
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Zeitbastion | CARD-WAR-TIMEBASTION | 5,0s | +4s, 35% Zeitdiebstahlreduktion (10s), +1 Karte, 3s immun gegen Zeitdiebstahl | 1× Zeitkern, 1× Reiner Eiskern |
| 2: Zeitfestung des Absoluten | CARD-WAR-ABSOLUTETIMEFORTRESS | 6,0s | +5s, 40% Zeitdiebstahlreduktion (15s), +2 Karten, 5s immun gegen Zeitdiebstahl | 1× Reiner Zeitkern, 1× Nullpunkt-Fragment |

#### 4.4.3 Blitz-Pfad ("Zeitbattlement")
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Zeitbattlement | CARD-WAR-TIMEBATTLEMENT | 5,0s | +4s, 25% Zeitdiebstahlreduktion (6s), +2 Karten, Nächste 3 Karten -1,0s | 1× Zeitkern, 1× Reiner Blitzkern |
| 2: Turm der Zeitsynchronisierung | CARD-WAR-TIMESYNCHRONIZATIONTOWER | 6,0s | +5s, 30% Zeitdiebstahlreduktion (8s), +3 Karten, Nächste 5 Karten -1,0s | 1× Reiner Zeitkern, 1× Urblitz |

## 5. Kartenkombo-Strategien

### 5.1 "Zeitliche Vergeltung" (Defensiv-Offensiv-Kombo)
- **Komponenten**: Zeitschild → Klingenschlag → Temporaler Konter
- **Mechanik**: Blockieren, dann verstärkter Gegenangriff mit Reflexion
- **Effekt**: 11-13 Schaden plus Zeitrückgewinnung (1,5-2,5s)

### 5.2 "Ewiger Schild" (Überlebens-Kombo)
- **Komponenten**: Ewige Wacht → Zeitschild → Zeitschild → Zeitfluss-Kontrolle
- **Mechanik**: Kostengünstige Blockketten mit Karten-Nachschub
- **Effekt**: 8-10s effizienter Schutz mit 2,0-3,0s Zeitrückgewinnung

### 5.3 "Temporaler Sturm" (Tempo-Kombo)
- **Komponenten**: Zeitliche Effizienz → Zeitschild → Sturmklinge → Klingenschlag
- **Mechanik**: Reduzierte Kosten durch Effizienzverkettung
- **Effekt**: 9 Gesamtschaden mit 2,0-3,0s Zeitersparnis

## 6. Interaktionen mit aktualisierten Kampffeld-Effekten

### 6.1 Zeitstasis-Interaktion (Welt 3)
Die Zeitstasis-Mechanik wurde von 50% auf 40% Zeitdiebstahlreduktion angepasst. Dies hat folgende Auswirkungen:
- Alle defensiven Zeitwächter-Karten wie Zeitbarriere bleiben effektiv.
- Die Effizienz des Zeitwächters in Welt 3 ist leicht reduziert, aber immer noch signifikant.
- Der Zeitwächter behält seinen "Heimvorteil" in der Eis-Welt bei ausgewogenerer Spielbarkeit für andere Klassen.

### 6.2 Chronoresonanz-Interaktion (Welt 4)
Die Chronoresonanz-Mechanik wurde um einen Zeitgewinn von +0,5s erweitert. Für den Zeitwächter bedeutet dies:
- Verbesserte Leistung in Welt 4, wo er zuvor Nachteile hatte.
- Der Zeitrückgewinn ergänzt insbesondere die defensiven Strategien des Zeitwächters.
- Neue Synergien mit Blitz-Evolutionspfaden wie Sturmschild.

### 6.3 DoT-Kategoriesystem
Die Feuer-Evolutionen wurden an das neue DoT-Kategoriesystem angepasst:
- **Schwacher DoT** (1 Schaden/Tick): 0,5s Zeitgewinn
- **Mittlerer DoT** (2-3 Schaden/Tick): 1,0s Zeitgewinn
- **Starker DoT** (4+ Schaden/Tick): 2,0s Zeitgewinn

## 7. Anpassung der Blitz-Ketteneffekte

Alle Blitz-Ketteneffekte wurden auf 70% Schadensübertragung reduziert (vorher 80-90%):
- Sturmschleuder: 70% Schadensübertragung auf verkettete Ziele
- Gewitterschlag: 70% Schadensübertragung auf verkettete Ziele
- Blitzschlag: 70% Schadensübertragung auf verkettete Ziele

## Quellendokumente
- ZK-CLASS-WAR-v1.0-20250326: Zeitwächter-Klassendefinition
- ZK-BAL-v1.1-20250327: Aktualisiertes Balance-Framework
- ZK-TIME-v1.1-20250327: Aktualisiertes Zeitsystem mit DoT-Kategorien

## Abhängige Dokumente
- ZK-WORLDS-v1.0-20250327: Weltensystem (Akt 1)
- ZK-DUN-MECH-v1.0-20250327: Kampffeld-Effekte
- ZK-MAT-v1.1-20250327: Materialien für Evolution