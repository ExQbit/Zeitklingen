# Schattenschreiter-Karten (ZK-CLASS-ROG-CARDS-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-26): Initiale Version der Schattenschreiter-Kartendefinitionen
- v1.1 (2025-03-27): Integration des DoT-Kategoriesystems, Zeitstasis-Anpassung (40%), Balancing-Updates

## Zusammenfassung
Detaillierte Spezifikation aller Schattenschreiter-Karten mit aktualisierten Werten gemäß dem DoT-Kategoriesystem und angepassten Balancing-Parametern. Karteneffekte wurden für bessere Interaktion mit dem 40% Zeitstasis-Effekt in Welt 3 kalibriert.

## 1. Basisangriffe

### 1.1 Schattendolch (CARD-ROG-SHADOWDAGGER)
- **Basis**: 1,0s, 3 Schaden
- **Startdeck**: 5 Karten
- **Evolution**: 3 Elementarpfade

#### 1.1.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien | DoT-Kategorie |
|-------|-----|--------|--------|------------|---------------|
| 1: Brennender Dolch | CARD-ROG-BURNINGDAGGER | 1,0s | 3 Schaden + 1 DoT (Schwach) | 1× Feuerkern, 3× Funkenfragment | Schwach (0,5s) |
| 2: Ascheklinge | CARD-ROG-ASHBLADE | 1,2s | 4 Schaden + 2 DoT (Mittel) | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern | Mittel (1,0s) |
| 3: Höllenstich | CARD-ROG-HELLSTAB | 1,5s | 5 Schaden + 4 DoT (Stark) | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz | Stark (2,0s) |

#### 1.1.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Frostdolch | CARD-ROG-FROSTDAGGER | 1,0s | 3 Schaden, 10% Slow | 1× Eiskern, 3× Eissplitter |
| 2: Eisklinge | CARD-ROG-ICEBLADE | 1,2s | 4 Schaden, 20% Slow | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Absolutstich | CARD-ROG-ABSOLUTESTAB | 1,5s | 5 Schaden, 30% Slow | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 1.1.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Blitzdolch | CARD-ROG-LIGHTNINGDAGGER | 1,0s | 3 Schaden, 0s nach Schattenkarte/3 Momentum | 1× Blitzkern, 3× Funkenstaub |
| 2: Sturmklinge | CARD-ROG-STORMBLADE | 1,0s | 4 Schaden, 0s nach Schattenkarte/3 Momentum, zieht 1 Karte bei 0-Kosten | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Gewitterstich | CARD-ROG-TEMPESTSTAB | 1,5s | 5 Schaden, 0s nach Schattenkarte/3 Momentum, zieht 1 Karte und +1 Momentum bei 0-Kosten | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

### 1.2 Giftklinge (CARD-ROG-POISONBLADE)
- **Basis**: 1,5s, 2 Schaden + 1 DoT (3s) (Schwach)
- **Startdeck**: 3 Karten
- **Evolution**: 3 Elementarpfade

#### 1.2.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien | DoT-Kategorie |
|-------|-----|--------|--------|------------|---------------|
| 1: Blutklinge | CARD-ROG-BLOODBLADE | 1,5s | 2 Schaden + 3 DoT (Mittel) | 1× Feuerkern, 3× Funkenfragment | Mittel (1,0s) |
| 2: Seuchenklinge | CARD-ROG-PLAGUEBLADE | 2,0s | 3 Schaden + 4 DoT (Stark) | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern | Stark (2,0s) |
| 3: Todesklinge | CARD-ROG-DEATHBLADE | 2,5s | 4 Schaden + 5 DoT, +2 bei kritischer Restzeit (Stark+) | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz | Stark (2,0s) |

#### 1.2.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien | DoT-Kategorie |
|-------|-----|--------|--------|------------|---------------|
| 1: Frostgiftklinge | CARD-ROG-FROSTPOISONBLADE | 1,5s | 2 Schaden + 1 DoT, 15% Slow | 1× Eiskern, 3× Eissplitter | Schwach (0,5s) |
| 2: Lähmungsklinge | CARD-ROG-PARALYSISBLADE | 2,0s | 3 Schaden + 2 DoT, 25% Slow | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern | Mittel (1,0s) |
| 3: Zeitstillklinge | CARD-ROG-TIMESTILLBLADE | 2,5s | 4 Schaden + 2 DoT, 40% Slow | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne | Mittel (1,0s) |

#### 1.2.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien | DoT-Kategorie |
|-------|-----|--------|--------|------------|---------------|
| 1: Schockklinge | CARD-ROG-SHOCKBLADE | 1,0s | 2 Schaden + 1 DoT, 2 Momentum bei Treffer | 1× Blitzkern, 3× Funkenstaub | Schwach (0,5s) |
| 2: Neuronenklinge | CARD-ROG-NEURONBLADE | 1,5s | 3 Schaden + 2 DoT, 2 Momentum bei Treffer | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern | Mittel (1,0s) |
| 3: Synapsenklinge | CARD-ROG-SYNAPSEBLADE | 2,0s | 4 Schaden + 3 DoT, 3 Momentum bei Treffer | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz | Mittel (1,0s) |

## 2. Schattenkarten

### 2.1 Schleier (CARD-ROG-VEIL)
- **Basis**: 0,5s, Nächster Angriff verfehlt
- **Startdeck**: 4 Karten
- **Evolution**: 3 Elementarpfade

#### 2.1.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Rauchschleier | CARD-ROG-SMOKEVEIL | 0,5s | Nächster Angriff verfehlt, 1 Schaden auf Angreifer | 1× Feuerkern, 3× Funkenfragment |
| 2: Ascheschleier | CARD-ROG-ASHVEIL | 1,0s | Nächste 2 Angriffe verfehlen, 1 Schaden auf Angreifer | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern |
| 3: Feuerschleier | CARD-ROG-FIREVEIL | 1,5s | Nächste 2 Angriffe verfehlen, 2 Schaden auf Angreifer | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz |

#### 2.1.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Nebelschleier | CARD-ROG-MISTVEIL | 0,5s | Nächste 2 Angriffe verfehlen | 1× Eiskern, 3× Eissplitter |
| 2: Frostschleier | CARD-ROG-FROSTVEIL | 1,0s | Nächste 3 Angriffe verfehlen | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Eisnebel | CARD-ROG-ICEMIST | 1,5s | Nächste 4 Angriffe verfehlen | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 2.1.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Blitzschleier | CARD-ROG-LIGHTNINGVEIL | 0,5s | Nächster Angriff verfehlt, +1 Momentum | 1× Blitzkern, 3× Funkenstaub |
| 2: Sturmschleier | CARD-ROG-STORMVEIL | 0,5s | Nächster Angriff verfehlt, +2 Momentum | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Gewitterschleier | CARD-ROG-TEMPESTVEIL | 1,0s | Nächste 2 Angriffe verfehlen, +2 Momentum | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

### 2.2 Schattenform (CARD-ROG-SHADOWFORM)
- **Basis**: 1,5s, Nächste 2 Angriffe verfehlen, +0,5s pro vermiedenem Angriff
- **Startdeck**: 3 Karten
- **Evolution**: 3 Elementarpfade

#### 2.2.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Flammenschatten | CARD-ROG-FLAMESHADOW | 1,5s | Nächste 2 Angriffe verfehlen, 2 Schaden pro vermiedenem Angriff | 1× Feuerkern, 3× Funkenfragment |
| 2: Gluthülle | CARD-ROG-EMBERCLOAK | 2,0s | Nächste 3 Angriffe verfehlen, 2 Schaden pro vermiedenem Angriff | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern |
| 3: Höllenhülle | CARD-ROG-HELLCLOAK | 2,5s | Nächste 3 Angriffe verfehlen, 3 Schaden pro vermiedenem Angriff | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz |

#### 2.2.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Schattenmantel | CARD-ROG-SHADOWCLOAK | 1,5s | Nächste 3 Angriffe verfehlen, +0,5s pro vermiedenem Angriff | 1× Eiskern, 3× Eissplitter |
| 2: Nebelmantel | CARD-ROG-MISTCLOAK | 2,0s | Nächste 3 Angriffe verfehlen, +1,0s pro vermiedenem Angriff | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Phantomform | CARD-ROG-PHANTOMFORM | 2,5s | Nächste 4 Angriffe verfehlen, +1,0s pro vermiedenem Angriff | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 2.2.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Blitzschatten | CARD-ROG-LIGHTNINGSHADOW | 1,0s | Nächste 2 Angriffe verfehlen, ziehe 1 Karte pro vermiedenem Angriff | 1× Blitzkern, 3× Funkenstaub |
| 2: Sturmform | CARD-ROG-STORMFORM | 1,5s | Nächste 2 Angriffe verfehlen, ziehe 1 Karte und +1 Momentum pro vermiedenem Angriff | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Gewitterwandler | CARD-ROG-TEMPESTSHIFTER | 2,0s | Nächste 3 Angriffe verfehlen, ziehe 1 Karte und +1 Momentum pro vermiedenem Angriff | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

## 3. Zeitdiebstahlkarten

### 3.1 Zeitdiebstahl (CARD-ROG-TIMETHEFT)
- **Basis**: 1,0s, Stiehlt 0,5s vom Gegner
- **Startdeck**: 3 Karten
- **Evolution**: 3 Elementarpfade

#### 3.1.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien | DoT-Kategorie |
|-------|-----|--------|--------|------------|---------------|
| 1: Brennender Raub | CARD-ROG-BURNINGTHEFT | 1,0s | Stiehlt 0,5s, 1 DoT für 3s | 1× Feuerkern, 3× Funkenfragment | Schwach (0,5s) |
| 2: Glutraub | CARD-ROG-EMBERTHEFT | 1,5s | Stiehlt 0,5s, 2 DoT für 3s | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern | Mittel (1,0s) |
| 3: Feuerraub | CARD-ROG-FIRETHEFT | 2,0s | Stiehlt 1,0s, 3 DoT für 3s | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz | Mittel (1,0s) |

#### 3.1.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Frostdiebstahl | CARD-ROG-FROSTTHEFT | 1,0s | Stiehlt 0,5s, 10% Slow für 3s | 1× Eiskern, 3× Eissplitter |
| 2: Eisraub | CARD-ROG-ICETHEFT | 1,5s | Stiehlt 0,5s, 20% Slow für 3s | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Zeitfrost | CARD-ROG-TIMEFROST | 2,0s | Stiehlt 1,0s, 30% Slow für 3s | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 3.1.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Blitzraub | CARD-ROG-LIGHTNINGTHEFT | 0,5s | Stiehlt 0,5s, +1 Momentum | 1× Blitzkern, 3× Funkenstaub |
| 2: Sturmraub | CARD-ROG-STORMTHEFT | 1,0s | Stiehlt 0,5s, +2 Momentum | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Gewitterraub | CARD-ROG-TEMPESTTHEFT | 1,0s | Stiehlt 1,0s, +3 Momentum | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

### 3.2 Temporaler Raub (CARD-ROG-TEMPORALTHEFT)
- **Basis**: 1,5s, Stiehlt 1,0s vom Gegner, verursacht 2 Schaden
- **Startdeck**: 3 Karten
- **Evolution**: 3 Elementarpfade

#### 3.2.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien | DoT-Kategorie |
|-------|-----|--------|--------|------------|---------------|
| 1: Brennender Temporalraub | CARD-ROG-BURNINGTEMPORALTHEFT | 1,5s | Stiehlt 1,0s, 3 Schaden + 1 DoT | 1× Feuerkern, 3× Funkenfragment | Schwach (0,5s) |
| 2: Ascheraub | CARD-ROG-ASHTHEFT | 2,0s | Stiehlt 1,0s, 4 Schaden + 2 DoT | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern | Mittel (1,0s) |
| 3: Infernaler Diebstahl | CARD-ROG-INFERNALTHEFT | 2,5s | Stiehlt 1,5s, 5 Schaden + 4 DoT | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz | Stark (2,0s) |

#### 3.2.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Frost-Temporalraub | CARD-ROG-FROSTTEMPORALTHEFT | 1,5s | Stiehlt 1,0s, 2 Schaden, 15% Slow | 1× Eiskern, 3× Eissplitter |
| 2: Eiskalter Raub | CARD-ROG-ICECOLDTHEFT | 2,0s | Stiehlt 1,0s, 3 Schaden, 25% Slow | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Absoluter Zeitraub | CARD-ROG-ABSOLUTETIMETHEFT | 2,5s | Stiehlt 1,5s, 4 Schaden, 35% Slow | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 3.2.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Blitz-Temporalraub | CARD-ROG-LIGHTNINGTEMPORALTHEFT | 1,5s | Stiehlt 1,0s, 2 Schaden, zieht 1 Karte | 1× Blitzkern, 3× Funkenstaub |
| 2: Temporaler Sturm | CARD-ROG-TEMPORALSTORM | 1,5s | Stiehlt 1,0s, 3 Schaden, zieht 1 Karte | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Chrono-Blitzeinschlag | CARD-ROG-CHRONOLIGHTNINGSTRIKE | 2,0s | Stiehlt 1,5s, 4 Schaden, zieht 2 Karten | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

## 4. Kettenkarten

### 4.1 Schattenschritt (CARD-ROG-SHADOWSTEP)
- **Basis**: 1,0s, +25% Effekt für nächste Karte, +15% für übernächste wenn Angriff
- **Startdeck**: 4 Karten
- **Evolution**: 3 Elementarpfade

#### 4.1.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien | DoT-Kategorie |
|-------|-----|--------|--------|------------|---------------|
| 1: Feuerschritt | CARD-ROG-FIRESTEP | 1,0s | +25% Effekt für nächste Karte, +1 DoT bei Angriffen | 1× Feuerkern, 3× Funkenfragment | Schwach (0,5s) |
| 2: Gluthüpfer | CARD-ROG-EMBERLEAP | 1,5s | +30% Effekt für nächste Karte, +2 DoT bei Angriffen | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern | Mittel (1,0s) |
| 3: Flammentanz | CARD-ROG-FIREDANCE | 2,0s | +35% Effekt für nächste Karte, +3 DoT bei Angriffen | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz | Mittel (1,0s) |

#### 4.1.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Eisschritt | CARD-ROG-ICESTEP | 1,0s | +25% Effekt für nächste Karte, nächster Angriff verfehlt | 1× Eiskern, 3× Eissplitter |
| 2: Frostgleiter | CARD-ROG-FROSTGLIDE | 1,5s | +30% Effekt für nächste Karte, nächste 2 Angriffe verfehlen | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Nullpunktsprung | CARD-ROG-ZEROPOINTJUMP | 2,0s | +35% Effekt für nächste Karte, nächste 3 Angriffe verfehlen | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 4.1.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Blitzschritt | CARD-ROG-LIGHTNINGSTEP | 1,0s | +25% Effekt für nächste 2 Karten | 1× Blitzkern, 3× Funkenstaub |
| 2: Quantenschritt | CARD-ROG-QUANTUMSTEP | 1,0s | +25% Effekt für nächste 3 Karten | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Zeitparadoxon | CARD-ROG-TIMEPARADOX | 1,5s | +25% Effekt für nächste 3 Karten, zieht 1 Karte | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

## 5. Signaturkarten

### 5.1 Zeitsprung (CARD-ROG-TIMELEAP)
- **Basis**: 3,0s, Stiehlt 1,5s und zieht 2 Karten
- **Startdeck**: 1 Karte
- **Evolution**: 3 Elementarpfade

#### 5.1.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien | DoT-Kategorie |
|-------|-----|--------|--------|------------|---------------|
| 1: Brennender Zeitsprung | CARD-ROG-BURNINGTIMELEAP | 3,0s | Stiehlt 1,5s, zieht 2 Karten, +2 DoT auf alle gezogenen Angriffskarten | 1× Zeitessenz, 1× Reiner Feuerkern | Mittel (1,0s) |
| 2: Infernaler Zeitsprung | CARD-ROG-INFERNALTIMELEAP | 3,5s | Stiehlt 2,0s, zieht 3 Karten, +3 DoT auf alle gezogenen Angriffskarten | 1× Zeitkern, 1× Ewige Flamme | Mittel (1,0s) |

#### 5.1.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Frostzeitsprung | CARD-ROG-FROSTTIMELEAP | 3,0s | Stiehlt 1,5s, zieht 2 Karten, nächste 3 Angriffe verfehlen | 1× Zeitessenz, 1× Reiner Eiskern |
| 2: Eiszeit | CARD-ROG-ICEAGE | 3,5s | Stiehlt 2,0s, zieht 3 Karten, nächste 4 Angriffe verfehlen | 1× Zeitkern, 1× Nullpunkt-Fragment |

#### 5.1.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Blitzzeitsprung | CARD-ROG-LIGHTNINGTIMELEAP | 2,5s | Stiehlt 1,5s, zieht 3 Karten, +3 Momentum | 1× Zeitessenz, 1× Reiner Blitzkern |
| 2: Temposhocksprung | CARD-ROG-TEMPOSHOCKJUMP | 3,0s | Stiehlt 2,0s, zieht 4 Karten, +4 Momentum | 1× Zeitkern, 1× Urblitz |

### 5.2 Schattensturm (CARD-ROG-SHADOWSTORM)
- **Basis**: 4,0s, 8 Schaden auf alle Gegner, +0,5s pro Treffer
- **Startdeck**: 1 Karte
- **Evolution**: 3 Elementarpfade

#### 5.2.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | Materialien | DoT-Kategorie |
|-------|-----|--------|--------|------------|---------------|
| 1: Feuersturm | CARD-ROG-FIRESTORM | 4,0s | 10 Schaden auf alle Gegner, +0,5s pro Treffer, +3 DoT | 1× Zeitessenz, 1× Reiner Feuerkern | Mittel (1,0s) |
| 2: Inferno | CARD-ROG-INFERNO | 5,0s | 12 Schaden auf alle Gegner, +1,0s pro Treffer, +4 DoT | 1× Zeitkern, 1× Ewige Flamme | Stark (2,0s) |

#### 5.2.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Frostsphäre | CARD-ROG-FROSTSPHERE | 4,0s | 9 Schaden auf alle Gegner, +0,5s pro Treffer, 30% Slow | 1× Zeitessenz, 1× Reiner Eiskern |
| 2: Absoluter Nullpunkt | CARD-ROG-ABSOLUTEZERO | 5,0s | 10 Schaden auf alle Gegner, +1,0s pro Treffer, 50% Slow | 1× Zeitkern, 1× Nullpunkt-Fragment |

#### 5.2.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Blitzsturm | CARD-ROG-LIGHTNINGSTORM | 3,5s | 8 Schaden auf alle Gegner, +0,5s pro Treffer, zieht 1 Karte pro Treffer | 1× Zeitessenz, 1× Reiner Blitzkern |
| 2: Hyperblitz | CARD-ROG-HYPERLIGHTNING | 4,0s | 9 Schaden auf alle Gegner, +0,5s pro Treffer, zieht 1 Karte und +1 Momentum pro Treffer | 1× Zeitkern, 1× Urblitz |

## 6. Kartenkombo-Strategien

### 6.1 "Schattenblitz"-Kombo (Effizienz-Kombo)
```
Schleier (0,5s) → Blitzdolch (0s) → Schattenschritt (1,0s) → Giftklinge (1,5s)
   │               │                │                 │
   ▼               ▼                ▼                 ▼
Ausweichen    0-Kosten durch    +25% Effekt       Verstärkter
              Schattenkarte     auf Giftklinge    DoT-Effekt (Schwach, 0,5s)
```

### 6.2 "Zeitdiebstahl-Kette" (Ressourcen-Kombo)
```
Schattenschritt (1,0s) → Zeitdiebstahl (1,0s) → Schleier (0,5s) → Blitzdolch (0s)
      │                     │                    │               │
      ▼                     ▼                    ▼               ▼
 +25% Effekt         Verstärkter            Ausweichen      0-Kosten durch
                    Zeitdiebstahl                           Schattenkarte
```

### 6.3 "Schattensturm" (Burst-Kombo)
```
Schattenschritt (1,0s) → Schattensturm (4,0s) → Zeitsprung (3,0s)
      │                     │                     │
      ▼                     ▼                     ▼
 +25% Effekt          Verstärkter            Kartenziehung
                     Flächenschaden          für Folgekombos
```

## 7. Klassenmechanik-Interaktionen

### 7.1 Zeitstasis-Anpassung (Welt 3)
- In Welt 3 (Eiszeit-Festung) werden Zeitdiebstahl-Effekte nur noch um 40% reduziert (vorher 50%)
- **Effektive Zeitdiebstahl-Werte bei aktivem Zeitstasis-Effekt:**
  - Zeitdiebstahl: 0,3s (statt 0,25s)
  - Blitzraub: 0,3s (statt 0,25s)
  - Temporaler Raub: 0,6s (statt 0,5s)
  - Chrono-Blitzeinschlag: 0,9s (statt 0,75s)

### 7.2 DoT-Kategorie-Integration
- Alle DoT-Effekte werden nun in eine der drei Kategorien eingeordnet:
  - **Schwach** (1 Schaden/Tick): 0,5s Zeitrückgewinn
  - **Mittel** (2-3 Schaden/Tick): 1,0s Zeitrückgewinn
  - **Stark** (4+ Schaden/Tick): 2,0s Zeitrückgewinn
- Bei Kombination mit der Zeitverbrennung-Mechanik in Welt 2 wird der Zeitgewinn sofort bei DoT-Anwendung realisiert

### 7.3 Blitz-Ketteneffektivität
- Ketteneffekte des Blitz-Evolutionspfads haben nun eine Effektivität von 70% (statt 80%)
- Betrifft hauptsächlich Kartenzieh-Mechaniken und Multi-Target-Effekte

## 8. Farbliche Visualisierung und UI-Elemente

### 8.1 DoT-Kategorien-Visualisierung
| Kategorie | Symbol | Farbe | Zeitgewinn |
|-----------|--------|-------|------------|
| Schwach | ● | Hellgelb (#FFC107) | +0,5s |
| Mittel | ●● | Orange (#FF9800) | +1,0s |
| Stark | ●●● | Dunkelorange (#FF5722) | +2,0s |

### 8.2 Kombo-Visualisierung
- Karten sind im Kombo-Potential farblich kodiert
- Schattenkarten erzeugen blaue Glüheffekte auf damit kombinierbaren Karten
- Zeitdiebstahl-Karten zeigen einen türkisen Effekt bei Zeitstasis-Reduktion

## Quellendokumente
- ZK-CLASS-ROG-CARDS-v1.0-20250326: Ursprüngliche Schattenschreiter-Kartendefinitionen
- ZK-TIME-v1.1-20250327: Aktualisiertes Zeitsystem mit DoT-Kategorien
- ZK-BAL-v1.1-20250327: Aktualisiertes Balancing-Framework

## Abhängige Dokumente
- ZK-DUN-MECH-v1.0-20250327: Dungeon-Mechaniken-Implementierung
- ZK-FEAT-EVOUI-v1.1-20250327: Evolutions-Interface
- ZK-TIME-v1.1-20250327: Zeitsystem mit DoT-Kategorien
- ZK-WORLDS-v1.0-20250327: Weltensystem Akt 1