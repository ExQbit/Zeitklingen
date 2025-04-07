# Tutorial-Dungeon: "Der Zerrissene Zeitstrom" (ZK-DUN-TUT-COMP-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-25): Komprimierte Version von ZK-DUN-TUT-v1.0-20250325
- v1.1 (2025-03-27): Integration des DoT-Kategoriesystems, Anpassung an 60s-Standard, Aktualisierung für Weltaffinitäten

## Zusammenfassung
Der Tutorial-Dungeon führt Spieler strukturiert in die Kernmechaniken von Zeitklingen ein. Drei progressive Phasen vermitteln Grundlagen, Zeitmanipulation und elementare Interaktionen. Das aktualisierte System integriert das DoT-Kategoriesystem und bereitet Spieler auf die Weltaffinitäten vor. Alle Kämpfe wurden auf den 60-Sekunden-Standard normalisiert.

## 1. Tutorial-Struktur

### 1.1 Dreiphasiges System
```
Phase 1: Grundlagen (Zeitschleifer)
  → Phase 2: Zeitmanipulation (Kristallwächter)
    → Phase 3: Elementarinteraktionen (Chrono-Anomalie)
```

### 1.2 Lernziele
| Phase | Primäre Lernziele | Sekundäre Lernziele |
|-------|-------------------|---------------------|
| 1 | Spielablauf, Kartennutzung | 60s-Zeitlimit, gegnerisches Verhalten |
| 2 | Zeitmanipulation, Gegner-Zeitdiebstahl | Karteneffizienz, Verteidigung |
| 3 | Elementareffekte, DoT-Kategorien | Evolutionssystem, Materialien |

## 2. Gegnerdesign

### 2.1 Zeitschleifer (Phase 1)
- **HP**: 12 (leicht besiegbar)
- **Aktionen**:
  - Sandschleier: 3s-Intervall, 2 Schaden
  - Zeitdiebstahl: 12s-Intervall, -1s vom Haupttimer
  - Zeitschleife: 20s-Intervall, +3 HP Selbstheilung

### 2.2 Kristallwächter (Phase 2)
- **HP**: 25 (moderate Herausforderung)
- **Aktionen**:
  - Kristallsturz: 5s-Intervall, 3 Schaden
  - Temporale Blockade: 12s-Intervall, blockiert zufällige Karte
  - Zeitdiebstahl: 25s-Intervall, -2s vom Haupttimer
  - Kristallrüstung: 15s-Intervall, -30% nächster Schaden

### 2.3 Chrono-Anomalie (Phase 3)
- **HP**: 40 (anspruchsvoll, aber bewältigbar)
- **Aktionen**:
  - Zeitfluss: 4s/2s-Intervall, 3 Schaden
  - Temporales Vakuum: 10s-Intervall, +0,5s Kartenkosten für 3s
  - Zeitreversion: 15s-Intervall, +5 HP Selbstheilung
  - Zeitdiebstahl: 30s-Intervall, -3s vom Haupttimer
  - **Phasenwechsel**: Bei 50% HP, beschleunigt Zeitfluss-Intervall

## 3. DoT-Kategorien-Einführung

### 3.1 Elementareffekte-Tutorial
- **Interaktive Einführung**: Übungskampf mit drei DoT-Stufen
- **Visuelle Anleitung**: Klare Darstellung der drei DoT-Kategorien:
  - Schwach (●): 1 Schaden/Tick, +0,5s Zeitgewinn
  - Mittel (●●): 2-3 Schaden/Tick, +1,0s Zeitgewinn
  - Stark (●●●): 4+ Schaden/Tick, +2,0s Zeitgewinn
- **UI-Hervorhebung**: Sofortiger Zeitgewinn wird betont angezeigt

## 4. Weltaffinitäts-Einführung

### 4.1 Klassenbezogene Elementaraffinitäten
- **Chronomant**: Einführung in Blitz-Ketteneffekte (70% Effektivität)
- **Zeitwächter**: Defensive Stärken und Eissynergien demonstrieren
- **Schattenschreiter**: Zeitdiebstahl-Mechaniken und Kombinationen zeigen

### 4.2 Elementare Kampfstile
| Element | Spielstil | Zeiteffekt | Klassenstärke |
|---------|-----------|------------|---------------|
| Feuer | Offensiv (DoT-fokussiert) | +0,5/1,0/2,0s per DoT | Chronomant |
| Eis | Defensiv (Slow-fokussiert) | Zeitdiebstahlreduktion 40% | Zeitwächter |
| Blitz | Effizient (Ketten-fokussiert) | -50% Kosten +0,5s per 2 Karten | Schattenschreiter |

## 5. Erste Evolution

### 5.1 Evolutionsauswahl
| Element | Evolvierte Karte | Primärer Effekt | Spielstil |
|---------|------------------|----------------|-----------|
| Feuer | Funke | 1s, 2 Schaden + 1 DoT (●) | Offensiv (+0,5s) |
| Eis | Frosthauch | 1,5s, 3 + 15% Slow | Defensiv |
| Blitz | Statische Entladung | 1s, 3 + Ketteneffekt (70%) | Effizient |

### 5.2 Garantierte Materialien
- **Feuer**: 1× Feuerkern, 3× Funkenfragment, 1-2× Zeitstaub
- **Eis**: 1× Eiskern, 3× Eissplitter, 1-2× Zeitstaub
- **Blitz**: 1× Blitzkern, 3× Funkenstaub, 1-2× Zeitstaub

## 6. UX-Optimierungen

### 6.1 DoT-Visualisierung
- Klare Punktesymbole: ●, ●●, ●●●
- Farbkodierung: Hellgelb (schwach), Orange (mittel), Dunkelorange (stark)
- Hervorhebung des Zeitgewinns: +0,5s, +1,0s, +2,0s

### 6.2 Weltübergangs-Vorbereitung
- Vorschau auf Zeitwirbel-Tal mit abschließender Übungseinheit
- Einführung der 60-Sekunden-Standardzeit für alle Kämpfe
- Demonstration des 70/30-Materialverteilungsprinzips

## 7. Erwartete Metriken

| Metrik | Erwartungswert | Akzeptanzbereich |
|--------|---------------|------------------|
| Zeit für Kampf 1 | 20-25s | 15-30s |
| Zeit für Kampf 2 | 25-30s | 20-35s |
| Zeit für Kampf 3 | 30-40s | 25-45s |
| Gesamtdauer | 10-15 min | 8-20 min |
| Erfolgsrate | 85% | 80-90% |
| DoT-Verständnisrate | 90% | 85-95% |

## Quellendokumente
- ZK-DUN-TUT-COMP-v1.0-20250325: Vorherige Version
- ZK-TIME-v1.1-20250327: Aktualisiertes Zeitsystem mit DoT-Kategorien
- ZK-WORLDS-v1.0-20250327: Weltensystem für Akt 1

## Abhängige Dokumente
- ZK-CLASS-MAGE-COMP-v1.1-20250327: Chronomant-Klassendefinition 
- ZK-CLASS-WAR-COMP-v1.1-20250327: Zeitwächter-Klassendefinition
- ZK-CLASS-ROG-COMP-v1.1-20250327: Schattenschreiter-Klassendefinition
- ZK-EVO-v1.1-20250327: Aktualisiertes Evolutionssystem