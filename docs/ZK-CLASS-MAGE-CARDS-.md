# Chronomant-Karten (ZK-CLASS-MAGE-CARDS-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-25): Initiale Version
- v1.1 (2025-03-27): Integration des DoT-Kategoriesystems, Reduzierung der Blitz-Ketteneffektivität auf 70%, Anpassung der Zeitgewinne

## Zusammenfassung
Detaillierte Spezifikation aller Chronomant-Karten, kategorisiert nach Basiszaubern, Zeitmanipulationskarten und Signaturkarten. Enthält Kerneigenschaften, Evolutionspfade und präzise Werte für Implementierung und Balancing. Version 1.1 integriert das DoT-Kategoriesystem und Balancing-Anpassungen für Blitz-Ketteneffekte.

## 1. Basiszauber

### 1.1 Arkaner Stoß (CARD-MAGE-ARCANEBOLT)
- **Basis**: 1,5s, 4 Schaden
- **Startdeck**: 8 Karten
- **Evolution**: 3 Elementarpfade

#### 1.1.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | DoT-Kategorie | Zeitgewinn | Materialien |
|-------|-----|--------|--------|--------------|------------|-------------|
| 1: Funke | CARD-MAGE-SPARK | 1s | 2 + 1 DoT | Schwach (●) | 0,5s | 1× Feuerkern, 3× Funkenfragment |
| 2: Feuerstoß | CARD-MAGE-FIREBOLT | 1,5s | 4 + 2 DoT | Mittel (●●) | 1,0s | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern |
| 3: Feuerlanze | CARD-MAGE-FIRELANCE | 2s | 6 + 4 DoT | Stark (●●●) | 2,0s | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz |

#### 1.1.2 Eis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Frosthauch | CARD-MAGE-FROSTBREATH | 1,5s | 3 + 15% Slow | 1× Eiskern, 3× Eissplitter |
| 2: Eissplitter | CARD-MAGE-ICESHARD | 2s | 5 + 25% Slow (2s) | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Frostexplosion | CARD-MAGE-FROSTEXPLOSION | 2,5s | 6 + 35% AoE Slow | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 1.1.3 Blitz-Evolution
| Stufe | ID | Kosten | Effekt | Ketteneffektivität | Materialien |
|-------|-----|--------|--------|-------------------|-------------|
| 1: Statische Entladung | CARD-MAGE-STATICDISCHARGE | 1s | 3 + Kette (1) | 70% | 1× Blitzkern, 3× Funkenstaub |
| 2: Kettenblitz | CARD-MAGE-CHAINLIGHTNING | 2s | 4 + Kette (2) | 70% | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Blitzentladung | CARD-MAGE-LIGHTNINGDISCHARGE | 2,5s | 5 + Kette (alle) | 70% | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

### 1.2 Arkane Projektion (CARD-MAGE-ARCANEPROJECTION)
- **Basis**: 2s, 5 Schaden
- **Startdeck**: 4 Karten
- **Evolution**: 3 Elementarpfade

#### 1.2.1 Feuer-Evolution
| Stufe | ID | Kosten | Effekt | DoT-Kategorie | Zeitgewinn | Materialien |
|-------|-----|--------|--------|--------------|------------|-------------|
| 1: Feuerball | CARD-MAGE-FIREBALL | 2s | 5 + kleiner AoE + 2 DoT | Mittel (●●) | 1,0s | 1× Feuerkern, 3× Funkenfragment |
| 2: Flammensphäre | CARD-MAGE-FLAMESPHERE | 2,5s | 7 + mittlerer AoE + 3 DoT | Stark (●●●) | 2,0s | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern |
| 3: Feuersbrunst | CARD-MAGE-CONFLAGRATION | 3s | 9 + großer AoE + 5 DoT | Stark (●●●) | 2,0s | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz |

#### 1.2.2-1.2.3 Eis/Blitz-Evolution (Ähnliche Struktur, kondensiert)
- **Eis**: Eislanze→Frostkaskade→Eissturm (Slow-Fokus)
- **Blitz**: Blitzschlag→Blitzgewitter→Blitzsturm (Chain-Fokus mit 70% Übertragung)

## 2. Zeitmanipulationskarten

### 2.1 Verzögern (CARD-MAGE-DELAY)
- **Basis**: 2s, Verzögert Gegnerangriff um 2s
- **Startdeck**: 3 Karten

#### 2.1.1 Basis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Verzögern+ | CARD-MAGE-DELAY-PLUS | 2s | +3s Verzögerung | 1× Zeitfragment, 1× Zeitstaub |
| 2: Zeitverzerrung+ | CARD-MAGE-TIMEDISTORTION-PLUS | 2,5s | +3s Verzögerung, -20% Schaden | 1× Zeitkristall, 2× Zeitfragment |
| 3: Zeitparadoxon | CARD-MAGE-TIMEPARADOX | 3s | +4s Verzögerung, 30% Schadensreflektion | 1× Zeitessenz, 3× Zeitkristall |

#### 2.1.2 Spezial-Evolution (mit Zeitkern)
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Chronomantische Verzögerung | CARD-MAGE-CHRONOMANTIC-DELAY | 2,5s | Alle Gegner -1,5s | 1× Zeitkern, 3× Zeitkristall |
| 2: Temporale Ruptur | CARD-MAGE-TEMPORAL-RUPTURE | 3s | Alle Gegner -2s, +0,5s zurück | 1× Zeitkern, 2× Zeitessenz |
| 3: Zeitstillstand | CARD-MAGE-TIMESTOP | 4s | Stoppt alle Gegner für 2s, +1s zurück | 1× Reiner Zeitkern, 3× Zeitessenz |

### 2.2 Beschleunigen (CARD-MAGE-ACCELERATE)
- **Basis**: 2,5s, Nächste 2 Karten -0,5s
- **Startdeck**: 3 Karten

#### 2.2.1 Basis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Beschleunigen+ | CARD-MAGE-ACCELERATE-PLUS | 2,5s | Nächste 3 Karten -0,5s | 2× Zeitfragment, 1× Elementaressenz |
| 2: Zeitschub | CARD-MAGE-TIMEBOOST | 3s | Nächste 4 Karten -0,5s | 1× Zeitkristall, 3× Zeitfragment |
| 3: Zeitfluss | CARD-MAGE-TIMEFLOW | 3,5s | Nächste 3 Karten -1s | 1× Zeitessenz, 2× Zeitkristall |

#### 2.2.2 Spezial-Evolution (mit Zeitkern)
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Temporale Eile | CARD-MAGE-TEMPORAL-HASTE | 3s | 4s lang alle Karten -0,5s | 1× Zeitkern, 1× Zeitessenz |
| 2: Arkane Beschleunigung | CARD-MAGE-ARCANE-ACCELERATION | 3,5s | 5s alle -0,5s + 1 Karte | 1× Zeitkern, 2× Zeitessenz |
| 3: Zeitrausch | CARD-MAGE-TIMERUSH | 4s | 5s alle -1s + 2 Karten | 1× Reiner Zeitkern, 3× Zeitessenz |

### 2.3 Zeitschild (CARD-MAGE-TIMESHIELD)
- **Basis**: 2s, Blockiert nächsten Angriff innerhalb 3s
- **Startdeck**: 2 Karten
- **Evolution**: Zeitschild+→Temporale Barriere→Zeitliche Festung

### 2.4 Temporale Riftrückgewinnung (CARD-MAGE-TEMPORALRIFTRECOVERY)
- **Basis**: 3s, +2s bei Gegnertötung
- **Startdeck**: 2 Karten
- **Evolution**: Temporale Rifternte→Chronoernte→Zeitflut

## 3. Signaturkarten

### 3.1 Arkane Intelligenz (CARD-MAGE-ARCANEINTELLIGENCE)
- **Basis**: 1s, Ziehe 2 Karten
- **Startdeck**: 1 Karte
- **Evolution**: Erweiterte Arkane Intelligenz→Temporales Bewusstsein

### 3.2 Zeitverzerrung (CARD-MAGE-TIMEDISTORTION)
- **Basis**: 4s, -30% Gegnergeschwindigkeit für 3s
- **Startdeck**: 1 Karte
- **Evolution**: Verstärkte Zeitverzerrung→Zeitkrümmung

### 3.3 Elementarkonvergenz (CARD-MAGE-ELEMENTALCONVERGENCE)
- **Basis**: 2,5s, +50% Elementarschaden
- **Startdeck**: 1 Karte
- **Evolution**: Elementarfusion→Elementarsynthese

### 3.4 Chronofluktuation (CARD-MAGE-CHRONOFLUCTUATION)
- **Basis**: 5s, +3s, 10 AoE-Schaden, +1 Karte
- **Startdeck**: 1 Karte

#### 3.4.1 Basis-Evolution
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Chronofluktuation+ | CARD-MAGE-CHRONOFLUCTUATION-PLUS | 5s | +3,5s, 12 AoE | 1× Zeitessenz, 3× Zeitkristall |
| 2: Zeitbruch | CARD-MAGE-TIMEBREACH | 5,5s | +4s, 15 AoE | 1× Zeitkern, 2× Zeitessenz |
| 3: Chronoriss | CARD-MAGE-CHRONORIFT | 6s | +5s, 18 AoE, 30% Slow | 1× Reiner Zeitkern, 3× Zeitessenz |

#### 3.4.2 Spezial-Evolution (mit Zeitkern)
| Stufe | ID | Kosten | Effekt | Materialien |
|-------|-----|--------|--------|------------|
| 1: Temporale Erschütterung | CARD-MAGE-TEMPORALSHOCK | 5,5s | +4s, 14 AoE, 3s Anti-Zeitdiebstahl | 1× Zeitkern, 3× Zeitessenz |
| 2: Chronometeor | CARD-MAGE-CHRONOMETEOR | 7s | +6s, 20 AoE, 2s Stopp, 5s Anti-Zeitdiebstahl | 1× Reiner Zeitkern, 1× Zeitkern, 3× Zeitessenz |

## 4. Kartenkombo-Strategien

### 4.1 "Zeitschleife" (Tempo-Kombo)
- **Kern**: Beschleunigen+→Temporale Eile→Zeitrausch + Arkane Intelligenz + Kettenblitz
- **Effekt**: 7-10 Karten in 10s-Fenster, erhöhte Effizienz

### 4.2 "Zeitstillstand" (Kontroll-Kombo)
- **Kern**: Verzögern→Zeitverzerrung+→Zeitparadoxon + Eissplitter + Zeitverzerrung
- **Effekt**: Gegner auf ~25% Normalgeschwindigkeit reduziert

### 4.3 "Zeitexplosion" (Burst-Kombo)
- **Kern**: Elementarkonvergenz + Feuerzauber + Chronofluktuation
- **Effekt**: 40-50 Gesamtschaden, 3-5s Zeitrückgewinn

## 5. DoT-Kategoriesystem

### 5.1 DoT-Stärke und Zeitgewinn
| Kategorie | Schadensbereich | Visualisierung | Zeitgewinn | Farbkodierung |
|-----------|----------------|----------------|------------|---------------|
| Schwach (●) | 1 Schaden/Tick | Ein Punkt | 0,5s | Hellgelb/Gold |
| Mittel (●●) | 2-3 Schaden/Tick | Zwei Punkte | 1,0s | Orange |
| Stark (●●●) | 4+ Schaden/Tick | Drei Punkte | 2,0s | Dunkelorange/Rot |

### 5.2 Anwendung auf Feuer-Evolutionspfade
Alle Feuer-evolutionierten Karten sind jetzt einer der drei DoT-Kategorien zugeordnet, die einen festen Zeitgewinn bei Anwendung gewähren:

- **Schwache DoTs** (Funke): Gewähren 0,5s sofortigen Zeitgewinn
- **Mittlere DoTs** (Feuerstoß, Feuerball): Gewähren 1,0s sofortigen Zeitgewinn
- **Starke DoTs** (Feuerlanze, Flammensphäre, Feuersbrunst): Gewähren 2,0s sofortigen Zeitgewinn

## 6. Blitz-Ketteneffekt-Anpassung

### 6.1 Reduzierung der Ketteneffektivität
Alle Blitz-Kettenfähigkeiten wurden von 80% auf 70% Schadensübertragung reduziert:

- Bei Kettenblitz auf das erste zusätzliche Ziel: 70% des Originalschadens
- Bei Kettenblitz auf das zweite zusätzliche Ziel: 70% des ersten Kettenschadens (49% des Originals)
- Bei Blitzentladung: 70% Übertragung pro Sprung, mit einem Minimum von 30% des Originalschadens

### 6.2 Auswirkung auf ZEV (Zeiteffizienzverhältnis)
Die Reduzierung der Ketteneffektivität bringt die Blitz-Evolution in einen ausgeglicheneren ZEV-Bereich:

| Evolutionspfad | ZEV vor Anpassung | ZEV nach Anpassung |
|----------------|-------------------|-------------------|
| Feuer | 3.1 - 3.4 | 3.1 - 3.4 |
| Eis | 2.9 - 3.2 | 2.9 - 3.2 |
| Blitz | 3.4 - 3.8 | 3.1 - 3.5 |

## 7. Evolutionspriorität

### 7.1 Empfohlene Reihenfolge
1. Statische Entladung (AoE, effizient)
2. Beschleunigen+ (Karteneffizienz)
3. Zeitverzerrung+ (Kontrolle)
4. Chronofluktuation+ (Wendepunktkarte)

### 7.2 Sockelprioritäten
1. Chronofluktuation: Zeitkristall (+30% Zeitrückgewinn)
2. Beschleunigen+: Topas (-0,6s Kosten)
3. Statische Entladung: Rubin (+30% Schaden)
4. Zeitverzerrung+: Saphir (+30% Effektdauer)

## Quellendokumente
- ZK-CLASS-MAGE-v1.1-20250327: Chronomant-Klassendefinition
- ZK-TIME-v1.1-20250327: Zeitsystem mit DoT-Kategoriesystem
- ZK-BAL-v1.1-20250327: Aktualisiertes Balancing-Framework

## Abhängige Dokumente
- ZK-TIME-v1.1-20250327: Zeitsystem für Kartenkosten/-effekte
- ZK-EVO-v1.1-20250327: Aktualisiertes Evolutionssystem
- ZK-MAT-v1.1-20250327: Materialien für Evolution