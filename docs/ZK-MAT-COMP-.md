# Materialsystem (ZK-MAT-COMP-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-25): Komprimierte Version von ZK-MAT-v1.0-20250325
- v1.1 (2025-03-27): Integration des 70/30-Materialverteilungssystems, aktualisierte Drop-Tabellen, DoT-Kategorie-System-Integration

## Zusammenfassung
Das Materialsystem definiert Ressourcen für Kartenleveling und Evolution. Kategorisiert nach Typ, Element und Seltenheit, bietet es deterministische Progression ohne Zufallselemente. Die 70/30-Verteilung elementarer Materialien ermöglicht sowohl Spezialisierung als auch strategische Vielfalt. Balancierte Materialökonomie stützt langfristige Spielermotivation.

## 1. Materialklassifikation

### 1.1 ID-Struktur
- Format: `MAT-[Kategorie]-[Element]-[Seltenheit]-[ID]`
- Beispiel: `MAT-TIME-NEU-UNC-001` (Zeitfragment)

### 1.2 Primärkategorien
- **Zeitressourcen**: Kartenleveling, Basis-Evolution
- **Elementarressourcen**: Elementare Evolution (Feuer/Eis/Blitz)
- **Qualitätsressourcen**: Sockel, Edelsteine
- **Spezialressourcen**: Rezepte, Transformation

### 1.3 Seltenheitsstufen
| Stufe | Farbe | Drop-Rate | Beschaffung |
|-------|-------|-----------|-------------|
| Gewöhnlich | Weiß | 50-70% | Sehr leicht |
| Ungewöhnlich | Grün | 20-30% | Leicht |
| Selten | Blau | 8-15% | Moderat |
| Episch | Lila | 2-5% | Schwer |
| Legendär | Orange | 0,5-1% | Sehr schwer |
| Mythisch | Türkis | <0,1% | Extrem schwer |

## 2. 70/30-Materialverteilungssystem

### 2.1 Verteilungsprinzip
- **70% thematisches Element**: Primärmaterialien der jeweiligen Welt
  - Ausreichend für 3-4 Kartenevolutionen des entsprechenden Elements
  - Unterstützt elementare Spezialisierung
- **30% diversifizierte Materialien**: Materialien anderer Elemente
  - Ermöglicht 1-2 Kartenevolutionen sekundärer Elemente
  - Fördert strategische Vielfalt und experimentelle Builds

### 2.2 Weltspezifische Materialverteilung
| Welt | Primärmaterial (70%) | Sekundärmaterialien (30%) |
|------|---------------------|---------------------------|
| 1: Zeitwirbel-Tal | Neutrale Basismaterialien | Ausgewogene Elementarmaterialien |
| 2: Flammen-Schmiede | Feuer-Materialien | Neutrale + Eis/Blitz-Materialien |
| 3: Eiszeit-Festung | Eis-Materialien | Neutrale + Feuer/Blitz-Materialien |
| 4: Gewittersphäre | Blitz-Materialien | Neutrale + Feuer/Eis-Materialien |
| 5: Chronos-Nexus | Ausgewogene Materialien | Erhöhte Seltenheit für alle Typen |

### 2.3 Mathematische Begründung
- **Hauptevolution**: 3-4 Evolutionen des Hauptelements benötigen ~70% der weltspezifischen Drops
- **Sekundärevolution**: 1-2 Evolutionen sekundärer Elemente benötigen ~30% der diversifizierten Drops
- **Theoretischer Evolutionsgrad nach 5 Welten**: 8-10 Karten Hauptelement, 4-5 Karten Sekundärelemente

## 3. Zeitressourcen

### 3.1 Kernressourcen
| Material | Seltenheit | Primäre Verwendung |
|----------|------------|-------------------|
| Zeitstaub | Gewöhnlich | Kartenleveling (1-3) |
| Zeitfragment | Ungewöhnlich | Kartenleveling (3-5), Sockelbasis |
| Zeitkristall | Selten | Kartenleveling (5-7), erweiterte Evolution |
| Zeitessenz | Episch | Kartenleveling (7-9), fortgeschrittene Evolution |
| Zeitkern | Legendär | Kartenleveling (9-10), spezielle Evolution |
| Reiner Zeitkern | Mythisch | Transformative Rezepte |

### 3.2 Beschaffung und Verarbeitung
- **Aufwärtskonversion**: 5× niedrigere → 1× höhere Stufe
- **Hauptquellen**: Gegner (gewöhnlich), Elitegegner (ungewöhnlich), Bosse (selten+)
- **Restzeit-Bonus**: >20s übrig → +50% Materialien, bessere Qualität

## 4. Elementarressourcen und DoT-Kategoriesystem

### 4.1 Feuerressourcen und DoT-Kategorien
| Material | Seltenheit | Verwendung | DoT-Kategorie | Zeitgewinn |
|----------|------------|------------|--------------|------------|
| Funkenfragment | Gewöhnlich | Basis-Feuerevolution | Schwach (1/Tick) | 0,5s |
| Feuerkern | Ungewöhnlich | Erste Feuer-Evolution | Mittel (2-3/Tick) | 1,0s |
| Vulkanessenz | Selten | Zweite Feuer-Evolution | Stark (4+/Tick) | 2,0s |
| Phönixfeder | Episch | Fortgeschrittene Feuer-Evolution | Stark+ | 2,0s |
| Reiner Feuerkern | Legendär | Höchste Feuer-Evolution | Stark++ | 2,0s |

### 4.2 Eisressourcen
| Material | Seltenheit | Verwendung | Slow-Wirksamkeit |
|----------|------------|------------|------------------|
| Eissplitter | Gewöhnlich | Basis-Eisevolution | 10-15% |
| Eiskern | Ungewöhnlich | Erste Eis-Evolution | 20-25% |
| Gefrorene Träne | Selten | Zweite Eis-Evolution | 30-35% |
| Ewiges Eis | Episch | Fortgeschrittene Eis-Evolution | 40-45% |
| Reiner Eiskern | Legendär | Höchste Eis-Evolution | 50-60% |

### 4.3 Blitzressourcen
| Material | Seltenheit | Verwendung | Ketteneffekte |
|----------|------------|------------|--------------|
| Funkenstaub | Gewöhnlich | Basis-Blitzevolution | 1 Ziel, 90% Übertragung |
| Blitzkern | Ungewöhnlich | Erste Blitz-Evolution | 2 Ziele, 80% Übertragung |
| Gewitteressenz | Selten | Zweite Blitz-Evolution | 2 Ziele, 70% Übertragung |
| Sturmkristall | Episch | Fortgeschrittene Blitz-Evolution | 3 Ziele, 70% Übertragung |
| Reiner Blitzkern | Legendär | Höchste Blitz-Evolution | Alle, 70% Übertragung |

## 5. DoT-Kategorie-System

### 5.1 Kategorien und Effekte
| Kategorie | Schadenswert/Tick | Zeitgewinn | Visuelle Darstellung | Farbkodierung |
|-----------|-------------------|------------|---------------------|---------------|
| Schwach | 1 | 0,5s | Ein Punkt (●) | Hellgelb/Gold |
| Mittel | 2-3 | 1,0s | Zwei Punkte (●●) | Orange |
| Stark | 4+ | 2,0s | Drei Punkte (●●●) | Dunkelorange/Rot |

### 5.2 DoT-Zeitgewinn-Mechanik
- Zeitgewinn erfolgt sofort bei DoT-Anwendung (nicht pro Tick)
- Maximal 10% der Kampfzeit (6s bei 60s) an DoT-Zeitgewinn pro Kampf
- Klare UI-Visualisierung mit Kategorie-Icons und DoT-Stärke-Anzeige

### 5.3 Weltspezifische DoT-Interaktion
- Welt 2 (Feuer): Zeitverbrennung-Mechanik verstärkt DoT-Zeitgewinne
- DoT-Verstärkungseffekte können Kategoriestufe anheben

## 6. Qualitätsressourcen

### 6.1 Sockelmaterialien
| Material | Seltenheit | Verwendung | Anforderung |
|----------|------------|------------|-------------|
| Einfache Fassung | Ungewöhnlich | Erster Sockel | Level 3+ Karte |
| Verstärkte Fassung | Selten | Zweiter Sockel | Level 7+ Karte |
| Arkane Fassung | Episch | Spezialfunktionen | Level 9+ Karte |
| Chronomantische Fassung | Legendär | +50% Sockeleffekte | Spezifische Quests |

### 6.2 Edelsteinmaterialien
| Material | Seltenheit | Verwendung |
|----------|------------|------------|
| Ungeschliffener Edelstein | Gewöhnlich | Stufe-1-Edelstein |
| Facettierter Edelstein | Ungewöhnlich | Upgrade auf Stufe 2-3 |
| Brillanter Edelstein | Selten | Upgrade auf Stufe 3-4 |
| Leuchtender Edelstein | Episch | Upgrade auf Stufe 4-5 |
| Perfekter Edelstein | Legendär | Maximale Verstärkung |

## 7. Materialökonomie

### 7.1 Aktualisierte Materialakquisitionsraten (Akt 1)
| Welt | Spielzeit | Gewöhnlich | Ungewöhnlich | Selten | Episch | Legendär | Mythisch |
|------|-----------|------------|--------------|--------|--------|----------|----------|
| 1 | 2,5h | 250-300 | 60-70 | - | - | - | - |
| 1-2 | 5,5h | 600-700 | 150-180 | 15-20 | - | - | - |
| 1-3 | 9h | 1000-1200 | 250-300 | 40-50 | 2-5 | - | - |
| 1-4 | 13h | 1500-1800 | 350-400 | 80-100 | 10-15 | 1-3 | - |
| 1-5 | 18h | 2200-2500 | 500-600 | 150-180 | 25-35 | 5-8 | 1-2 |

### 7.2 Evolutionsfortschritt nach 5 Welten
- 6-8 Karten evolviert (23-31% des Decks)
- 2-3 Karten auf Stufe 3 (höchste)
- 2-3 Karten auf Stufe 2
- 2-3 Karten auf Stufe 1

### 7.3 Beispiel: Chronomant-Evolution nach 5 Welten
| Karte | Evolution | Element | Stufe |
|-------|-----------|---------|-------|
| Arkaner Stoß | → Statische Entladung → Kettenblitz → Blitzentladung | Blitz | 3 |
| Arkaner Stoß | → Funke → Feuerstoß | Feuer | 2 |
| Verzögern | → Verzögern+ → Zeitverzerrung+ | Basis | 2 |
| Arkane Intelligenz | → Erweiterte Arkane Intelligenz | Basis | 1 |
| Beschleunigen | → Beschleunigen+ | Basis | 1 |
| Chronofluktuation | → Chronofluktuation+ → Zeitbruch | Signatur | 2 |

### 7.4 Transfersystem
- **Aufwärtskonversion**: 5:1 (unbegrenzt für gewöhnlich → selten)
- **Abwärtskonversion**: 1:4 (unbegrenzt)
- **Limitierte Konversion**: 5:1 für selten → episch (5×/Woche), episch → legendär (2×/Woche)

## 8. Inventar-Visualisierung

### 8.1 DoT-Visualisierung
- Farbcodierte DoT-Symbole (●, ●●, ●●●) für klare Kategorie-Erkennung
- Zeitgewinn-Anzeige direkt bei Applikation ("+0,5s", "+1,0s", "+2,0s")
- Fortschrittsbalken für kumulativen Zeitgewinn (z.B. "3,0s/6,0s")

### 8.2 Tooltip-Informationen für DoT-Materialien
```
┌─────────────────────────────────────┐
│ Vulkanessenz                        │
│ Seltenes Feuer-Material             │
│                                     │
│ Ermöglicht Stufe-2-Feuerevolutionen │
│ DoT-Kategorie: Stark (●●●)          │
│ Zeitgewinn: 2,0s pro Anwendung      │
│                                     │
│ Bestand: 5/10                       │
└─────────────────────────────────────┘
```

## Quellendokumente
- ZK-MAT-v1.0-20250325: Materialsystem
- ZK-TIME-v1.1-20250327: Zeitsystem mit DoT-Kategorien
- ZK-TEST-PLAYTEST-v1.0-20250327: Spieltestergebnisse

## Abhängige Dokumente
- ZK-WORLDS-v1.0-20250327: Weltensystem (Akt 1)
- ZK-EVO-v1.0-20250325: Evolutionssystem
- ZK-BAL-v1.1-20250327: Aktualisiertes Balancing-Framework