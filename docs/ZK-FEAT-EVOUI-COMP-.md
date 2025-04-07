# Feature-Spezifikation: Kartenevolutions-Interface (ZK-FEAT-EVOUI-COMP-v1.0-20250325)

## Änderungshistorie
- v1.0 (2025-03-25): Komprimierte Version von ZK-FEAT-EVOUI-v1.0-20250325

## Zusammenfassung
Das Kartenevolutions-Interface ermöglicht die gezielte Weiterentwicklung von Karten über elementare Pfade (Feuer, Eis, Blitz). Es visualisiert Anforderungen, Kosten und Resultate der Evolution und bietet ein befriedigendes, deterministisches Progressionssystem.

## 1. Feature-Übersicht

### 1.1 Ziele und Anwendungsfälle
- **Hauptziele**: Klare Visualisierung von Evolutionspfaden und -resultaten, intuitive Materialübersicht
- **Primäre Anwendungsfälle**: 
  - Pfadvergleich vor Evolution
  - Evolution mit vorhandenen Materialien
  - Langfristige Evolutionsplanung

### 1.2 Feature-Abgrenzung
- **In Scope**: Kartenauswahl, Evolutionspfade, Materialanzeige, Vergleichsansicht, Evolutionsanimation
- **Out of Scope**: Materialbeschaffung, Kartenleveling, Sockelsystem, Inventory-Management

### 1.3 Benutzertypen
| Typ | Erwartungen | Metriken |
|-----|-------------|----------|
| Neuer Spieler | Klare Anleitung, Verständnis | Tutorial-Abschlussrate |
| Casual-Spieler | Einfache Bedienung, sichtbarer Fortschritt | Regelmäßigkeit der Evolutionen |
| Core-Gamer | Detaillierte Informationen, Strategiewahl | Pfadverteilung |
| Min-Maxer | Vollständige Werte, optimale Entscheidungen | Effizienzrate der Materialnutzung |

## 2. Funktionale Anforderungen

### 2.1 Kernfunktionalitäten
| ID | Anforderung | Priorität |
|----|-------------|-----------|
| FR-01 | Evolutionsverfügbarkeit visuell hervorheben | Hoch |
| FR-02 | Detaillierte Evolutionspfad-Informationen anzeigen | Hoch |
| FR-03 | Benötigte Materialien mit Besitz/Mangel anzeigen | Hoch |
| FR-04 | Vorher-Nachher-Kartenvergleich ermöglichen | Mittel |
| FR-05 | Visuelles/auditives Feedback bei Evolution | Hoch |
| FR-06 | Automatischer Materialverbrauch bei Bestätigung | Hoch |
| FR-07 | Pfadauswahl bei mehreren Optionen | Hoch |
| FR-08 | Kontextsensitive Hilfetexte/Tooltips | Mittel |

### 2.2 Erfolgsszenarien
1. **Hauptszenario**: Kartenauswahl → Pfadauswahl → Materialprüfung → Bestätigung → Animation → Abschluss
2. **Tutorial-Szenario**: Geführte Evolution mit bereitgestellten Materialien
3. **Vorschau-Szenario**: Evolutionsprüfung ohne Durchführung

### 2.3 Fehler- und Ausnahmefälle
| Fehlerfall | Verhalten | Fehlermeldung |
|------------|-----------|---------------|
| Unzureichende Materialien | Button deaktiviert, Materialien rot markiert | "Unzureichende Materialien" |
| Maximale Evolution erreicht | Option nicht angezeigt | "Maximale Evolution erreicht" |
| Zu niedriges Kartenlevel | Anforderung hervorgehoben | "Mindestlevel 2 benötigt" |
| Netzwerkfehler | Lokales Rollback | "Evolutionsprozess fehlgeschlagen" |

## 3. Technische Spezifikation

### 3.1 Architektur und Datenfluss
```
EvolutionUI → MaterialSystem → CardSystem
    │               │             │
    ▼               ▼             ▼
EvolutionController → MaterialRepository → CardFactory
    │               │             │
    └───────────────┴─────────────┘
              │
              ▼
        GameEvents (Event Bus)
```

### 3.2 Kernklassen
- **EvolutionUIController**: UI-Integration, Userinput, Animation
- **EvolutionPathView**: Visualisierung eines Evolutionspfads
- **MaterialRequirementDisplay**: Materialanforderungsanzeige
- **CardComparisonView**: Vorher-Nachher-Vergleich
- **EvolutionAnimationController**: Evolutionsanimationen

### 3.3 UI-Design
```
┌─ KARTENEVOLUTION-INTERFACE ──┐
│ [Zurück]        [Hilfe]      │
│ ┌────────┐ ┌────────┐ ┌────────┐ │
│ │Original│ │Evopfade│ │Evolviert│ │
│ │ Karte  │ │ □ Feuer│ │ Karte   │ │
│ │ [Bild] │ │ □ Eis  │ │ [Bild]  │ │
│ │ Name:X │ │ □ Blitz│ │ Name:Y  │ │
│ │ Zeit:2s│ └────────┘ │ Zeit:2.5s│ │
│ │ Eff:4  │            │ Eff:5+2 │ │
│ └────────┘            └────────┘ │
│ ┌─ MATERIALANFORDERUNGEN ───┐ │
│ │ Mat1:3/3  Mat2:2/5  Mat3:1/1│ │
│ └──────────────────────────┘ │
│ [Abbrechen]    [Bestätigen]  │
└───────────────────────────────┘
```

### 3.4 Animationen und Feedback
| Element | Animation | Auslöser | Dauer |
|---------|-----------|----------|-------|
| Karte | Pulsieren | Evolvierbarkeit | Kontinuierlich |
| Feuer-Evolution | Flammeneffekt | Bestätigung | 2,0s |
| Eis-Evolution | Frosteffekt | Bestätigung | 2,0s |
| Blitz-Evolution | Blitzeffekt | Bestätigung | 2,0s |
| Materialanzeige | Abbau-Animation | Bestätigung | 1,0s |

## 4. Abhängigkeiten und Integration

### 4.1 Systemabhängigkeiten
| System | Benötigte Funktionalität | Schnittstelle |
|--------|--------------------------|---------------|
| Evolutionssystem | Pfade, Anforderungen, Durchführung | IEvolutionSystem |
| Materialsystem | Bestände, Nutzung | IMaterialSystem |
| Kartensystem | Karteninfos, Erzeugung | ICardSystem |
| Event-System | Systembenachrichtigung | GameEvents |
| Audio-System | Evolutionsgeräusche | AudioManager |

### 4.2 Asset-Anforderungen
- Interface-Grafiken: Rahmen, Buttons, Hintergründe
- Kartenrahmen für elementare Varianten
- Evolutionsanimationen für drei Elementartypen
- Evolutionssounds für jedes Element

### 4.3 Eventbasierte Kommunikation
- **OnCardEvolved**: Evolution UI → CardSystem, QuestSystem, AchievementSystem
- **OnMaterialsUsed**: MaterialSystem → InventoryUI, QuestSystem
- **OnEvolutionComplete**: Evolution UI → TutorialSystem, UIManager

## 5. Teststrategie

### 5.1 Testfälle
| ID | Testfall | Schritte | Erwartetes Ergebnis |
|----|----------|----------|---------------------|
| TC-01 | Pfadauswahl | Karte auswählen, Feuer wählen | Pfad hervorgehoben, Materialanzeige aktualisiert |
| TC-02 | Evolution durchführen | Bestätigen klicken | Materialverbrauch, Animation, Evolution abgeschlossen |
| TC-03 | Fehlende Materialien | Pfad mit fehlenden Materialien wählen | Materialien rot markiert, Button deaktiviert |
| TC-04 | Evolution nach Materialerwerb | Materialien erwerben, Evolution durchführen | Button aktiv, Evolution möglich |
| TC-05 | Mehrfach-Evolution | Evolvierte Karte auswählen | Zweite Evolutionsstufe angezeigt |

### 5.2 Automatisierte Tests
- SelectEvolutionPath_UpdatesUICorrectly
- ConfirmEvolution_ConsumesCorrectMaterials
- MaterialRequirements_DisplaysCorrectStatus
- AnimationController_PlaysCorrectAnimationType

## 6. Umsetzungsplanung

### 6.1 Aufgabenaufschlüsselung
| ID | Aufgabe | Schätzung | Verantwortlich |
|----|---------|-----------|----------------|
| TASK-01 | UI-Controller-Grundstruktur | 8h | UI-Programmierer |
| TASK-02 | Kartenauswahl-Interface | 6h | UI-Programmierer |
| TASK-03 | Evolutionspfad-Anzeige | 10h | UI-Programmierer |
| TASK-04 | Vergleichsansicht | 8h | UI-Programmierer |
| TASK-05 | Materialanzeige | 6h | UI-Programmierer |
| TASK-06 | Animationscontroller | 12h | Animations-Programmierer |
| TASK-07-09 | Element-Animationen (3) | 24h | VFX-Artist |
| TASK-10 | Audio-Feedback | 6h | Sound-Designer |
| TASK-11 | Hilfe-System | 4h | Content-Designer |
| TASK-12-13 | System-Integration (2) | 8h | System-Programmierer |
| TASK-14-16 | Tests, Bugfixes, Optimierung | 24h | Gesamtes Team |

### 6.2 Timeline
- **Woche 1**: UI-Basis, Komponenten, Struktur
- **Woche 2**: Animationen, Audio, VFX
- **Woche 3**: Integration, Tests, Optimierung

### 6.3 Risiken und Gegenmaßnahmen
| Risiko | Wahrscheinlichkeit | Auswirkung | Gegenmaßnahmen |
|--------|-------------------|------------|----------------|
| Performance-Probleme bei Animationen | Mittel | Hoch | Optimierte Partikeleffekte, LOD-System |
| UI/Backend-Inkonsistenzen | Mittel | Hoch | Umfassende Integrationstests, Event-System |
| Verwirrende UI für Neulinge | Niedrig | Mittel | Usability-Tests, kontextsensitive Hilfe |
| Animations-Verzögerungen | Hoch | Mittel | Platzhalteranimationen, modulares System |
| Materialverbrauch-Fehler | Niedrig | Kritisch | Transaktionssystem, Validierung, Rollback |

## 7. Erweiterbarkeit

### 7.1 Geplante Erweiterungen
- Multi-Evolutions-Preview (v2.0)
- Evolutionspfad-Entscheidungshilfe (v2.5) 
- Evolutionsgeschichte-Anzeige (v2.0)
- Evolutionsrückgängigmachung (v3.0)
- Massenevolution (v2.0)

### 7.2 Implementierungshinweise
- Modulares Animationssystem für Erweiterbarkeit
- Data-driven Design für Pfade, Kosten, Effekte
- Flexibles UI-Layout für zusätzliche Elemente
- Versionierte Schnittstellen für Erweiterungen

## Quellendokumente
- ZK-EVO-v1.0-20250325: Evolutionssystem
- ZK-MAT-v1.0-20250325: Materialsystem
- ZK-TIME-v1.0-20250325: Zeitsystem
- ZK-BAL-v1.0-20250325: Balancing-Framework

## Abhängige Dokumente
- ZK-UI-CORE-v1.0-20250326: UI-Core-Framework (geplant)
- ZK-PROG-v1.0-20250326: Progressionssystem (geplant)
- ZK-ANIM-v1.0-20250326: Animationssystem (geplant)
- ZK-TUTOR-v1.0-20250326: Tutorial-System (geplant)