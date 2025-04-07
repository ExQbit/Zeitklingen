# Referenzdatenbank für Materialien (ZK-REF-MAT-COMP-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-25): Komprimierte Version von ZK-REF-MAT-v1.0-20250325
- v1.1 (2025-03-27): Integration des 70/30-Materialverteilungssystems, DoT-Kategoriesystem-Unterstützung, aktualisierte Drop-Tabellen, Blitz-Ketteneffekt-Reduzierung (70%)

## Zusammenfassung
Vollständige Referenzdatenbank aller Materialien im Zeitklingen-Spiel: Ressourcen, Eigenschaften, Beschaffungsmethoden und Verwendungszwecke. Implementiert das 70/30-Verteilungssystem für weltspezifische und diversifizierte Materialien sowie das dreistufige DoT-Kategoriesystem für Feuer-Materialien.

## 1. Materialklassifikationssystem

### 1.1 ID-Struktur
- Format: `MAT-[Kategorie]-[Element]-[Seltenheit]-[ID]`
- Beispiel: `MAT-TIME-NEU-UNC-001` (Zeitfragment)

### 1.2 Kategorien
```
PRIMÄRMATERIALIEN
       │
┌──────┬─────────┬──────┬───────┐
▼      ▼         ▼      ▼       ▼
ZEIT  ELEMENT  QUALITÄT SPEZIAL RESSOURCEN
```

### 1.3 Seltenheitsstufen
| Code | Seltenheit | Farbe | Drop-Rate | Schwierigkeit |
|------|------------|-------|-----------|---------------|
| COM | Gewöhnlich | Weiß | 50-70% | Sehr leicht |
| UNC | Ungewöhnlich | Grün | 20-30% | Leicht |
| RAR | Selten | Blau | 8-15% | Moderat |
| EPI | Episch | Lila | 2-5% | Schwer |
| LEG | Legendär | Orange | 0,5-1% | Sehr schwer |
| MYT | Mythisch | Türkis | <0,1% | Extrem schwer |

### 1.4 Elementarcodes
| Code | Element | Farbe | Beispiel |
|------|---------|-------|----------|
| NEU | Neutral | Grau | Zeitstaub |
| FIR | Feuer | Rot | Funkenfragment |
| ICE | Eis | Blau | Eissplitter |
| LIT | Blitz | Lila | Funkenstaub |
| TIM | Zeit | Türkis | Reiner Zeitkern |

## 2. 70/30-Materialverteilungssystem

### 2.1 Grundprinzip
- Jede elementare Welt (2-4) liefert **70% Materialien des Weltelements** und **30% diversifizierte Materialien**
- Neutrale Welten (1, 5) liefern ausgewogene Materialverteilung
- System gewährleistet Hauptentwicklung im thematischen Element und sekundäre Evolutionen in anderen Elementen

### 2.2 Weltspezifische Materialverteilung
| Welt | Primärelement | Verteilung |
|------|---------------|------------|
| 1: Zeitwirbel-Tal | Neutral | Ausgewogen (ca. 25% pro Element) |
| 2: Flammen-Schmiede | Feuer | 70% Feuer, 30% andere (je 10%) |
| 3: Eiszeit-Festung | Eis | 70% Eis, 30% andere (je 10%) |
| 4: Gewittersphäre | Blitz | 70% Blitz, 30% andere (je 10%) |
| 5: Chronos-Nexus | Alle | Ausgewogen + höherer Seltenheitsgrad |

### 2.3 Progressive Entwicklung
| Spielfortschritt | Primäre Evolution | Sekundäre Evolution |
|------------------|-------------------|---------------------|
| Welt 1 | 1 Karte (beliebiges Element) | - |
| Welten 1-2 | 2-3 Karten (Feuer Stufe 1-2) | 1 Karte (anderes Element) |
| Welten 1-3 | 3-4 Karten (Feuer/Eis Stufe 1-2) | 2 Karten (andere Elemente) |
| Welten 1-4 | 4-5 Karten (verschiedene Stufe 1-3) | 3 Karten (andere Elemente) |
| Welten 1-5 | 5-6 Karten (hauptsächlich Stufe 2-3) | 4-5 Karten (Stufe 1-2) |

## 3. Zeitressourcen

### 3.1 Kernressourcen
| Material-ID | Name | Seltenheit | Verwendung |
|-------------|------|------------|------------|
| MAT-TIME-NEU-COM-001 | Zeitstaub | Gewöhnlich | Kartenleveling (1-3) |
| MAT-TIME-NEU-UNC-001 | Zeitfragment | Ungewöhnlich | Kartenleveling (3-5), Sockel |
| MAT-TIME-NEU-RAR-001 | Zeitkristall | Selten | Kartenleveling (5-7), Evolution |
| MAT-TIME-NEU-EPI-001 | Zeitessenz | Episch | Kartenleveling (7-9), Fortgeschritten |
| MAT-TIME-NEU-LEG-001 | Zeitkern | Legendär | Kartenleveling (9-10), Spezialevolution |
| MAT-TIME-NEU-MYT-001 | Reiner Zeitkern | Mythisch | Transformative Rezepte |

### 3.2 Beschaffung und Verarbeitung
```
Zeitstaub ──┬─► Standardnutzung: Kartenleveling (1→2, 2→3)
            └─► Verarbeitung: 5× Zeitstaub = 1× Zeitfragment

Zeitfragment ┬─► Standardnutzung: Kartenleveling (3→4, 4→5)
             ├─► Sockelnutzung: Basis-Sockelerstellung
             └─► Verarbeitung: 5× Zeitfragment = 1× Zeitkristall
```

### 3.3 Drop-Tabelle (aktualisiert)
| Gegner-Typ | Welt 1 | Welt 2 | Welt 3 | Welt 4 | Welt 5 |
|------------|--------|--------|--------|--------|--------|
| Standard | Zeitstaub (70%) | Zeitstaub (60%), Zeitfragment (10%) | Zeitstaub (50%), Zeitfragment (20%) | Zeitfragment (50%), Zeitstaub (20%) | Zeitfragment (40%), Zeitkristall (20%) |
| Elite | Zeitfragment (50%) | Zeitfragment (40%), Zeitkristall (10%) | Zeitfragment (30%), Zeitkristall (20%) | Zeitkristall (40%), Zeitfragment (10%) | Zeitkristall (30%), Zeitessenz (20%) |
| Mini-Boss | Zeitkristall (60%) | Zeitkristall (50%), Zeitessenz (10%) | Zeitkristall (40%), Zeitessenz (15%) | Zeitessenz (50%), Zeitkristall (10%) | Zeitessenz (40%), Zeitkern (10%) |
| Dungeon-Boss | Zeitessenz (30%) | Zeitessenz (25%), Zeitkern (5%) | Zeitessenz (20%), Zeitkern (7%) | Zeitkern (15%), Zeitessenz (15%) | Zeitkern (20%), Reiner Zeitkern (5%) |

## 4. Elementarressourcen mit DoT-Kategorie-Integration

### 4.1 Feuer-Materialien
| Material-ID | Name | Seltenheit | Verwendung | DoT-Kategorie | Zeitgewinn |
|-------------|------|------------|------------|---------------|------------|
| MAT-ELEM-FIR-COM-001 | Funkenfragment | Gewöhnlich | Basis-Feuerevolution | Schwach (●) | 0,5s |
| MAT-ELEM-FIR-UNC-001 | Feuerkern | Ungewöhnlich | Erste Feuer-Evolution | Mittel (●●) | 1,0s |
| MAT-ELEM-FIR-RAR-001 | Vulkanessenz | Selten | Zweite Feuer-Evolution | Mittel (●●) | 1,0s |
| MAT-ELEM-FIR-EPI-001 | Phönixfeder | Episch | Fortgeschrittene Feuer-Evolution | Stark (●●●) | 2,0s |
| MAT-ELEM-FIR-LEG-001 | Reiner Feuerkern | Legendär | Höchste Feuer-Evolution | Stark (●●●) | 2,0s |
| MAT-ELEM-FIR-MYT-001 | Ewige Flamme | Mythisch | Feuerlanze-Transformation | Stark+ (●●●+) | 2,5s |

### 4.2 Eis-Materialien
| Material-ID | Name | Seltenheit | Verwendung | Slow-Effektivität |
|-------------|------|------------|------------|-------------------|
| MAT-ELEM-ICE-COM-001 | Eissplitter | Gewöhnlich | Basis-Eisevolution | 10-15% |
| MAT-ELEM-ICE-UNC-001 | Eiskern | Ungewöhnlich | Erste Eis-Evolution | 20-25% |
| MAT-ELEM-ICE-RAR-001 | Gefrorene Träne | Selten | Zweite Eis-Evolution | 30-35% |
| MAT-ELEM-ICE-EPI-001 | Ewiges Eis | Episch | Fortgeschrittene Eis-Evolution | 40-45% |
| MAT-ELEM-ICE-LEG-001 | Reiner Eiskern | Legendär | Höchste Eis-Evolution | 50-60% |
| MAT-ELEM-ICE-MYT-001 | Nullpunkt-Fragment | Mythisch | Frostexplosion-Transformation | 60-80% |

### 4.3 Blitz-Materialien (angepasst)
| Material-ID | Name | Seltenheit | Verwendung | Ketteneffektivität |
|-------------|------|------------|------------|---------------------|
| MAT-ELEM-LIT-COM-001 | Funkenstaub | Gewöhnlich | Basis-Blitzevolution | 1 Ziel, 70% Übertragung |
| MAT-ELEM-LIT-UNC-001 | Blitzkern | Ungewöhnlich | Erste Blitz-Evolution | 1 Ziel, 70% Übertragung |
| MAT-ELEM-LIT-RAR-001 | Gewitteressenz | Selten | Zweite Blitz-Evolution | 2 Ziele, 70% Übertragung |
| MAT-ELEM-LIT-EPI-001 | Sturmkristall | Episch | Fortgeschrittene Blitz-Evolution | 2-3 Ziele, 70% Übertragung |
| MAT-ELEM-LIT-LEG-001 | Reiner Blitzkern | Legendär | Höchste Blitz-Evolution | Alle, 70% Übertragung |
| MAT-ELEM-LIT-MYT-001 | Urblitz | Mythisch | Blitzentladung-Transformation | Alle, 70% Übertragung + 1,0s |

## 5. DoT-Kategoriesystem

### 5.1 Klassifikationsschema
| Kategorie | Schadenswert/Tick | Zeitgewinn | Visualisierung | Farbcodierung |
|-----------|-------------------|------------|----------------|---------------|
| Schwach (●) | 1 | 0,5s | Ein Punkt | Hellgelb/Gold (#FFC107) |
| Mittel (●●) | 2-3 | 1,0s | Zwei Punkte | Orange (#FF9800) |
| Stark (●●●) | 4+ | 2,0s | Drei Punkte | Dunkelorange/Rot (#FF5722) |

### 5.2 DoT-Material-Interaktionen
| Material-Kombination | Resultierende DoT-Kategorie | Zeitgewinn | Beispiel |
|----------------------|---------------------------|------------|----------|
| 2× Schwach | Mittel | 1,0s | 2× Funkenfragment → Mittel-DoT |
| 1× Mittel + 1× Schwach | Mittel+ | 1,5s | 1× Feuerkern + 1× Funkenfragment → Mittel+-DoT |
| 2× Mittel | Stark | 2,0s | 2× Feuerkern → Stark-DoT |
| 1× Stark + beliebig | Stark+ | 2,5s | 1× Phönixfeder + beliebig → Stark+-DoT |

### 5.3 Weltspezifische DoT-Interaktion
| Welt | Effekt auf DoT-Kategorien | Zeitgewinn-Modifikator |
|------|--------------------------|------------------------|
| 1: Zeitwirbel-Tal | Standard | 1,0× |
| 2: Flammen-Schmiede | +1 Kategorie-Stufe möglich | 1,2× |
| 3: Eiszeit-Festung | Erhöhte DoT-Dauer (+25%) | 0,8× |
| 4: Gewittersphäre | Kettenreaktion für DoTs | 1,0× |
| 5: Chronos-Nexus | Kombinierte Elementar-DoTs | 1,5× |

## 6. Qualitätsressourcen

### 6.1 Sockelmaterialien
| Material-ID | Name | Seltenheit | Verwendung |
|-------------|------|------------|------------|
| MAT-QUAL-NEU-UNC-001 | Einfache Fassung | Ungewöhnlich | Erster Sockel (Level 3+ Karten) |
| MAT-QUAL-NEU-RAR-001 | Verstärkte Fassung | Selten | Zweiter Sockel (Level 7+ Karten) |
| MAT-QUAL-NEU-EPI-001 | Arkane Fassung | Episch | Spezialfunktionen für Sockel |
| MAT-QUAL-NEU-LEG-001 | Chronomantische Fassung | Legendär | Verstärkt Sockeleffekte um 50% |

### 6.2 Edelsteinmaterialien
| Material-ID | Name | Seltenheit | Verwendung |
|-------------|------|------------|------------|
| MAT-QUAL-NEU-COM-001 | Ungeschliffener Edelstein | Gewöhnlich | Stufe-1-Edelstein-Herstellung |
| MAT-QUAL-NEU-UNC-001 | Facettierter Edelstein | Ungewöhnlich | Upgrade auf Stufe 2-3 |
| MAT-QUAL-NEU-RAR-001 | Brillanter Edelstein | Selten | Upgrade auf Stufe 3-4 |
| MAT-QUAL-NEU-EPI-001 | Leuchtender Edelstein | Episch | Upgrade auf Stufe 4-5 |
| MAT-QUAL-NEU-LEG-001 | Perfekter Edelstein | Legendär | Maximale Verstärkung |

## 7. Materialökonomie

### 7.1 Aktualisierte Material-Akkumulation (Akt 1)
| Welt | Gewöhnlich | Ungewöhnlich | Selten | Episch | Legendär | Mythisch |
|------|------------|--------------|--------|--------|----------|----------|
| 1 | 250-300 | 60-70 | - | - | - | - |
| 1-2 | 600-700 | 150-180 | 15-20 | - | - | - |
| 1-3 | 1000-1200 | 250-300 | 40-50 | 2-5 | - | - |
| 1-4 | 1500-1800 | 350-400 | 80-100 | 10-15 | 1-3 | - |
| 1-5 | 2200-2500 | 500-600 | 150-180 | 25-35 | 5-8 | 1-2 |

### 7.2 Evolutionsfortschritt nach 70/30-Verteilung
| Evolutionspfad | Nach Welt 3 | Nach Welt 5 |
|----------------|-------------|-------------|
| Hauptelement | 3-4 Karten (Stufe 1-2) | 5-6 Karten (Stufe 2-3) |
| Sekundärelemente | 1-2 Karten (Stufe 1) | 3-4 Karten (Stufe 1-2) |
| Basis-Zeitkarten | 2-3 Karten | 3-4 Karten |
| Gesamt (% des Decks) | 23-27% | 27-35% |

### 7.3 Transfersystem
| Von | Zu | Rate | Limit |
|-----|---|------|-------|
| Zeitstaub | Zeitfragment | 5:1 | Unbegrenzt |
| Zeitfragment | Zeitkristall | 5:1 | Unbegrenzt |
| Zeitkristall | Zeitessenz | 5:1 | Unbegrenzt |
| Gewöhnlich | Ungewöhnlich | 5:1 | Unbegrenzt |
| Ungewöhnlich | Selten | 5:1 | Unbegrenzt |
| Selten | Episch | 5:1 | 5× pro Woche |
| Episch | Legendär | 5:1 | 2× pro Woche |
| Höher | Niedriger | 1:4 | Unbegrenzt |

## 8. Beispiel: Chronomant-Progression durch 5 Welten

### 8.1 Phase 1: Welt 1-2
- **Materialien**: 300 Zeitstaub, 70 Zeitfragmente, 60 Funkenstaub, 50 Eissplitter, 165 Funkenfragment
- **Evolution**: 
  - Arkaner Stoß → Statische Entladung (Blitz)
  - Arkaner Stoß → Funke (Feuer)
  - Verzögern → Verzögern+ (Basis)

### 8.2 Phase 2: Welt 3-4
- **Kumulierte Materialien**: 1200 Zeitstaub, 300 Zeitfragmente, 80 Blitzkerne, 40 Feuerkerne, 35 Gewitteressenzen
- **Evolution**: 
  - Statische Entladung → Kettenblitz → Blitzentladung (Blitz)
  - Verzögern+ → Zeitverzerrung+ (Basis)
  - Arkane Intelligenz → Erweiterte Arkane Intelligenz (Basis)

### 8.3 Phase 3: Welt 5
- **Kumulierte Materialien**: 2400 Zeitstaub, 550 Zeitfragmente, 3 Zeitkerne, 1 Reiner Zeitkern, 1 Reiner Feuerkern
- **Evolution**: 
  - Funke → Feuerstoß (Feuer)
  - Chronofluktuation → Chronofluktuation+ → Zeitbruch (Signatur)

## 9. Material-zu-UI-Mapping

### 9.1 DoT-Kategorie-Visualisierung
| Kategorie | Piktogramm | Farbe | Animation |
|-----------|------------|-------|-----------|
| Schwach (●) | Einzelnes Flämmchen | #FFC107 | Subtiles Flackern |
| Mittel (●●) | Doppelte Flamme | #FF9800 | Mittleres Pulsieren |
| Stark (●●●) | Dreifache Flamme | #FF5722 | Intensives Lodern |

### 9.2 Material-Kategoriefilter
- **Hauptkategorien**: Zeit, Elementar (Feuer/Eis/Blitz), Qualität, Spezial
- **Unterkategorien**: DoT-Stärke, Slow-Effektivität, Ketteneffektivität
- **Sortierung**: Seltenheit, Element, Verwendbarkeit, Akquisitionsort

## Quellendokumente
- ZK-MAT-v1.1-20250327: Materialsystem mit 70/30-Verteilung
- ZK-TIME-v1.1-20250327: Zeitsystem mit DoT-Kategorien
- ZK-WORLDS-v1.0-20250327: Weltensystem und Material-Distribution

## Abhängige Dokumente
- ZK-CLASS-MAGE-CARDS-v1.1-20250327: Chronomant-Karten für DoT-System
- ZK-CLASS-WAR-CARDS-v1.1-20250327: Zeitwächter-Karten für DoT-System
- ZK-CLASS-ROG-CARDS-v1.1-20250327: Schattenschreiter-Karten für DoT-System
- ZK-EVO-v1.1-20250327: Evolutionssystem mit angepassten Ketteneffekten