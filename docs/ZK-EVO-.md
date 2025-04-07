# Evolutionssystem (ZK-EVO-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-25): Erste Version des Evolutionssystems
- v1.1 (2025-03-27): Integration des DoT-Kategoriesystems, Anpassung der Blitz-Ketteneffektivität auf 70%, Standardisierung der Elementarpfade

## Zusammenfassung
Das Evolutionssystem ermöglicht gezielte Kartenverbesserung statt zufälliger Sammlung. Spieler entwickeln vorhandene Karten über elementare Pfade (Feuer, Eis, Blitz) mit zunehmender Stärke. System basiert auf Erfahrungsgewinn, bewussten Entscheidungen und Materialinvestition.

## 1. Grundprinzipien

### 1.1 Kernphilosophie
- Festes Deck (20-30 Karten) statt Kartensammlung
- Deterministische Progression ohne Zufallselemente
- Individuelle Kartenverbesserung statt Deck-Erweiterung
- Strategische Spezialisierung (nicht alle Karten maximal entwickelbar)

### 1.2 Zweistufiges System
- **Level (1-10)**: XP durch Kartennutzung + Materialinvestition
- **Evolution**: Elementare Spezialisierung für Level-2+-Karten

## 2. Levelingsystem

### 2.1 Level-Anforderungen
| Level | XP | Materialien | Effektsteigerung |
|-------|------|------------|------------------|
| 1→2 | 100 | 3× Zeitstaub | +10% Grundwerte |
| 3→4 | 500 | 3× Zeitfragment | +15% Grundwerte |
| 5→6 | 2000 | 3× Zeitkristall | +20% Grundwerte |
| 7→8 | 8000 | 3× Zeitessenz | +25% Grundwerte |
| 9→10 | 25000 | 1× Zeitkern | +30% + Spezialeffekt |

### 2.2 Materialklassen
- **Gewöhnlich** (50-70% Drop): Frühes Spiel, Level 1-3
- **Ungewöhnlich** (20-30%): Mittleres Spiel, Level 3-5
- **Selten** (8-15%): Fortgeschritten, Level 5-7
- **Episch** (2-5%): Spätphase, Level 7-9
- **Legendär** (0.5-1%): Endgame, Level 9-10
- **Mythisch** (<0.1%): Transformationen

## 3. Evolutionssystem

### 3.1 Elementare Pfade
| Element | Fokus | Spielstil | Effektivität |
|---------|-------|-----------|--------------|
| Feuer | Schaden, DoT | Offensiv | Einzelziel, kurze Kämpfe |
| Eis | Kontrolle, Slow | Defensiv | Langzeit, Sicherheit |
| Blitz | Effizienz, Ketten | Temporeich | Mehrfachziele, Rotation |

### 3.2 DoT-Kategoriesystem (Feuer-Evolution)
| Kategorie | Schadenswert/Tick | Zeitgewinn | Visualisierung |
|-----------|-------------------|------------|----------------|
| Schwach | 1 | 0,5s | Ein Punkt (●) |
| Mittel | 2-3 | 1,0s | Zwei Punkte (●●) |
| Stark | 4+ | 2,0s | Drei Punkte (●●●) |

### 3.3 Angepasste Ketteneffekte (Blitz-Evolution)
| Evolutionsstufe | Kettenlänge | Schadensübertragung | Reichweite |
|-----------------|-------------|---------------------|------------|
| Stufe 1 | 1 Ziel | 70% | 4 Einheiten |
| Stufe 2 | 2 Ziele | 70% | 4 Einheiten |
| Stufe 3 | 3+ Ziele | 70% | 4 Einheiten |

### 3.4 Evolutionsstufen
- **Erste Evolution** (Level 2+): Elementar-Grundeffekt, geringe Materialkosten
- **Zweite Evolution** (Level 5+): Verbesserte Effekte, seltenere Materialien
- **Dritte Evolution** (Level 8+): Maximale Effekte, legendäre Materialien

### 3.5 Beispiel: Arkaner Stoß (Magier-Basiskarte)
```
[Arkaner Stoß] (1.5s, 4 Schaden)
  ├─►[Funke] (Feuer): 1s, 2 + 1 DoT (Schwach: 0,5s)
  │   └─►[Feuerstoß]: 1.5s, 4 + 2 DoT (Mittel: 1,0s)
  │       └─►[Feuerlanze]: 2s, 6 + 4 DoT (Stark: 2,0s)
  ├─►[Frosthauch] (Eis): 1.5s, 3 + 15% Slow
  │   └─►[Eissplitter]: 2s, 5 + 25% Slow
  │       └─►[Frostexplosion]: 2.5s, 6 + 35% AoE Slow
  └─►[Statische Entladung] (Blitz): 1s, 3 + 1 Chain (70%)
      └─►[Kettenblitz]: 2s, 4 + 2 Chain (70%)
          └─►[Blitzentladung]: 2.5s, 5 + 3 Chain (70%)
```

## 4. Sockelsystem

### 4.1 Sockel und Fassungen
- Erster Sockel: Level 3+, "Einfache Fassung" + 5× Zeitfragment
- Zweiter Sockel: Level 7+, "Verstärkte Fassung" + 3× Zeitkristall
- Edelsteine jederzeit wechselbar (Fassung bleibt erhalten)

### 4.2 Edelsteintypen
| Edelstein | Effekt | Qualitätsstufen (1-5) |
|-----------|--------|------------------------|
| Rubin (rot) | +X% Schaden | 10-30% |
| Saphir (blau) | +X% Defensiveffekte | 10-30% |
| Topas (gelb) | -X Zeitkosten | 0.2-0.6s |
| Smaragd (grün) | +X% Statuseffektdauer | 20-60% |
| Diamant (weiß) | +X% Edelstein-Verstärkung | 10-50% |
| Obsidian (schwarz) | X% Neg.→Pos. Effekte | 20-80% |
| Zeitkristall | X% Zeitkosten zurück | 10-30% |

## 5. Progression

### 5.1 Zeitlicher Fortschritt
- Erste Evolution: 3-5 Spielstunden
- Zweite Evolution: 15-20 Spielstunden
- Erste Sockelfassung: 8-10 Spielstunden
- Dritte Evolution: 60-80 Spielstunden
- Level 10 Karte: 70-90 Spielstunden

### 5.2 70/30-Materialverteilungssystem
| Welt | Element | Materialverteilung |
|------|---------|-------------------|
| 1 | Neutral | Ausgewogen für alle Pfade |
| 2 | Feuer | 70% Feuer, 30% andere |
| 3 | Eis | 70% Eis, 30% andere |
| 4 | Blitz | 70% Blitz, 30% andere |
| 5 | Gemischt | Ausgewogen für alle Pfade |

### 5.3 Balancierte Entwicklung
- Durchschnittlicher Spieler (30-50h): ~25% Deck maximal entwickelbar
- Intensiver Spieler (100h+): ~45% Deck maximal entwickelbar
- Hardcore-Spieler (300h+): ~65% Deck maximal entwickelbar

## 6. Kartenspezifische Evolution

### 6.1 Chronomant-Karten (Beispiele mit DoT-System)
| Karte | Evolution | DoT-Kategorie | Zeitgewinn |
|-------|-----------|---------------|------------|
| Funke | Schwacher DoT | 1 Schaden/Tick | 0,5s |
| Feuerstoß | Mittlerer DoT | 2 Schaden/Tick | 1,0s |
| Feuerlanze | Starker DoT | 4 Schaden/Tick | 2,0s |

### 6.2 Zeitwächter-Karten (Beispiele mit Chronoresonanz)
| Karte | Evolution | Chronoresonanz-Bonus |
|-------|-----------|----------------------|
| Sturmschild | Blitz-Pfad, Stufe 1 | +0,5s bei Aktivierung |
| Energieschild | Blitz-Pfad, Stufe 2 | +0,5s bei Aktivierung |
| Blitzschild | Blitz-Pfad, Stufe 3 | +0,5s bei Aktivierung |

### 6.3 Schattenschreiter-Karten (Beispiele mit Zeitstasis)
| Karte | Evolution | Effekt unter 40% Zeitstasis |
|-------|-----------|----------------------------|
| Blitzraub | Blitz-Pfad, Stufe 1 | 0,5s Zeitdiebstahl (vorher 0,3s) |
| Sturmraub | Blitz-Pfad, Stufe 2 | 0,5s Zeitdiebstahl (vorher 0,3s) |
| Gewitterraub | Blitz-Pfad, Stufe 3 | 1,0s Zeitdiebstahl (vorher 0,6s) |

## 7. Visualisierungssystem

### 7.1 DoT-Visualisierung
- Farbkodierung: Hellgelb (Schwach), Orange (Mittel), Dunkelorange/Rot (Stark)
- Punktesystem: ●, ●●, ●●● für die drei Stärken
- Sofortige Zeitgewinn-Anzeige: +0,5s, +1,0s, +2,0s

### 7.2 Ketteneffekt-Visualisierung
- Reduzierte visuelle Intensität entsprechend der 70% Schadensübertragung
- Reichweitenanzeige durch Leuchtkreis mit 4 Einheiten Radius
- Kettenlinien mit abnehmender Intensität für jeden Sprung

## Quellendokumente
- ZK-EVO-v1.0-20250325: Ursprüngliches Evolutionssystem
- ZK-TIME-v1.1-20250327: Zeitsystem mit DoT-Kategorien
- ZK-BAL-v1.1-20250327: Angepasste Balancierungsparameter

## Abhängige Dokumente
- ZK-MAT-v1.1-20250327: Detailliertes Materialsystem für Evolution
- ZK-CLASS-MAGE-EVO-v1.1-20250327: Evolutionspfade für Chronomanten
- ZK-CLASS-WAR-EVO-v1.1-20250327: Evolutionspfade für Zeitwächter
- ZK-CLASS-ROG-EVO-v1.1-20250327: Evolutionspfade für Schattenschreiter