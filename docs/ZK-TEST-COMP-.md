# Teststrategie und QA-Prozesse (ZK-TEST-COMP-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-25): Komprimierte Version von ZK-TEST-v1.0-20250325
- v1.1 (2025-03-27): Integration der Spieltestergebnisse, neuer Testmethoden für das DoT-Kategoriesystem, Weltmechanik-Anpassungen und überarbeitete Klassenbalance

## Zusammenfassung
Strukturierter, systematischer Ansatz zur Qualitätssicherung des Zeitklingen-Spiels mit besonderem Fokus auf Determinismus und Testautomatisierung. Diese Version integriert die aktualisierten Balancing-Parameter und neuen Mechaniken aus den umfassenden Spieltests.

## 1. Testphilosophie

### 1.1 Kernprinzipien
1. **Determinismus**: Konsistente, wiederholbare Tests mit klar definierten Erwartungen
2. **Vollständige Abdeckung**: 100% Testabdeckung für kritische Systeme
3. **Frühe Fehlererkennung**: Shift-Left-Ansatz für frühe Qualitätssicherung
4. **Automatisierung**: Maximierung automatisierter Tests
5. **Reproduzierbarkeit**: Jeder Fehler muss klar reproduzierbar sein

### 1.2 Neue Testschwerpunkte
- **DoT-Kategoriesystem**: Verifizierung der präzisen Zeitgewinne (0,5/1,0/2,0s)
- **Weltmechanik-Balance**: Tests für angepasste Mechaniken (40% Zeitstasis, +0,5s Chronoresonanz)
- **Blitz-Ketteneffektivität**: Validation der 70% Schadensübertragung
- **70/30-Materialverteilung**: Langzeittests über 5 Welten für Evolutionsbalance

## 2. Testsuite für DoT-Kategoriesystem

### 2.1 Grundlegende Validierungstests
| Testfall-ID | Beschreibung | Erwartetes Ergebnis | Priorität |
|-------------|--------------|---------------------|-----------|
| DOT-CAT-001 | Schwacher DoT (1 Schaden/Tick) | 0,5s Zeitgewinn | Hoch |
| DOT-CAT-002 | Mittlerer DoT (2-3 Schaden/Tick) | 1,0s Zeitgewinn | Hoch |
| DOT-CAT-003 | Starker DoT (4+ Schaden/Tick) | 2,0s Zeitgewinn | Hoch |
| DOT-CAT-004 | Mehrfache DoT-Anwendung | Kumulativer Zeitgewinn bis 6s Limit | Hoch |
| DOT-CAT-005 | DoT-Stärkenwechsel (z.B. 1→2→4 Schaden) | Korrekte Kategoriewechsel | Mittel |

### 2.2 Integrationstests mit Zeitverbrennung
| Testfall-ID | Beschreibung | Erwartetes Ergebnis | Priorität |
|-------------|--------------|---------------------|-----------|
| DOT-TBF-001 | Funke+Zeitverbrennung | 0,5s Zeitgewinn pro Anwendung | Hoch |
| DOT-TBF-002 | Feuerstoß+Zeitverbrennung | 1,0s Zeitgewinn pro Anwendung | Hoch |
| DOT-TBF-003 | Feuerlanze+Zeitverbrennung | 2,0s Zeitgewinn pro Anwendung | Hoch |
| DOT-TBF-004 | Mehrfache DoTs+Zeitverbrennung | Korrekte Limitierung bei 6s (10%) | Mittel |

### 2.3 UI-Darstellungstests
| Testfall-ID | Beschreibung | Erwartetes Ergebnis | Priorität |
|-------------|--------------|---------------------|-----------|
| DOT-UI-001 | Schwacher DoT-Indikator | "●" mit hellgelber Färbung | Mittel |
| DOT-UI-002 | Mittlerer DoT-Indikator | "●●" mit oranger Färbung | Mittel |
| DOT-UI-003 | Starker DoT-Indikator | "●●●" mit dunkeloranger/roter Färbung | Mittel |
| DOT-UI-004 | Zeitgewinn-Anzeige | Klare Anzeige "+0,5s", "+1,0s", "+2,0s" | Hoch |

## 3. Testsuite für angepasste Weltmechaniken

### 3.1 Zeitstasis-Tests (Welt 3)
| Testfall-ID | Beschreibung | Erwartetes Ergebnis | Priorität |
|-------------|--------------|---------------------|-----------|
| TSF-001 | Zeitdiebstahl unter Zeitstasis | 40% Reduktion (3,0s → 1,8s) | Hoch |
| TSF-002 | Schattenschreiter-Zeitdiebstahl | Ausgewogenes Spielerlebnis, Restzeit ~10s | Hoch |
| TSF-003 | Zeitwächter-Interaktion | Stapelbare Resistenz, aber nicht über 85% | Mittel |

```csharp
// Beispiel-Testmethode für Zeitstasis
[Test]
public void TimeStasis_ReducesTimeTheft_By40Percent() {
    // Arrange
    var stasisField = new TimeStasisField();
    var theftEvent = new TimeTheftEventArgs { 
        timeAmount = 5.0f, 
        source = TheftSource.Enemy 
    };
    
    // Act
    stasisField.ModifyTimeTheft(theftEvent);
    
    // Assert
    Assert.AreEqual(3.0f, theftEvent.timeAmount, 0.01f);
}
```

### 3.2 Chronoresonanz-Tests (Welt 4)
| Testfall-ID | Beschreibung | Erwartetes Ergebnis | Priorität |
|-------------|--------------|---------------------|-----------|
| CRF-001 | Grundmechanik: 2 Karten → 50% Reduktion | Korrekte Kostenreduktion | Hoch |
| CRF-002 | Zusätzlicher Zeitgewinn | Genau 0,5s zusätzlich zur Kostenreduktion | Hoch |
| CRF-003 | Zeitwächter-Performance | Verbesserte Restzeit (~14-15s) | Mittel |

```csharp
// Beispiel-Testmethode für Chronoresonanz
[Test]
public void ChronoResonance_ProvidesTimeGain_AfterTwoCards() {
    // Arrange
    var resonanceField = new ChronoResonanceField();
    var player = new PlayerController();
    var timeManager = new TimeManager();
    
    // Act
    // Simuliere 2 Karten
    resonanceField.HandleCardPlayed(new Card() { TimeCost = 1.5f }, CardPlayer.Player);
    resonanceField.HandleCardPlayed(new Card() { TimeCost = 2.0f }, CardPlayer.Player);
    
    // Dritte Karte mit Resonanz-Effekt
    float initialTime = timeManager.CurrentTime;
    Card resonanceCard = new Card() { TimeCost = 4.0f };
    resonanceField.HandleCardPlayed(resonanceCard, CardPlayer.Player);
    float finalTime = timeManager.CurrentTime;
    
    // Erwarteter Zeitgewinn: 50% von 4.0s = 2.0s + 0.5s Bonus = 2.5s
    float expectedTimeGain = 2.5f;
    
    // Assert
    Assert.AreEqual(expectedTimeGain, initialTime - finalTime + 4.0f, 0.01f);
}
```

### 3.3 Blitz-Ketteneffekt-Tests
| Testfall-ID | Beschreibung | Erwartetes Ergebnis | Priorität |
|-------------|--------------|---------------------|-----------|
| LCE-001 | Kettenübertragung zu 1 Ziel | 70% des Originalschadens | Hoch |
| LCE-002 | Kettenübertragung zu 2 Zielen | 70% bzw. 49% des Originalschadens | Hoch |
| LCE-003 | Ketteneffekt mit Chronoresonanz | Zielwerte für ZEV-Balance (3,1-3,5) | Mittel |

## 4. Klassenbalance-Testsuites

### 4.1 Cross-Klassen-Balance in Welt 3
| Testfall-ID | Beschreibung | Erwartetes Ergebnis | Priorität |
|-------------|--------------|---------------------|-----------|
| WLD3-BAL-001 | Chronomant in Welt 3 | Durchschnittliche Restzeit 12-15s | Hoch |
| WLD3-BAL-002 | Zeitwächter in Welt 3 | Durchschnittliche Restzeit 16-18s | Hoch |
| WLD3-BAL-003 | Schattenschreiter in Welt 3 | Durchschnittliche Restzeit 9-12s | Hoch |

### 4.2 Cross-Klassen-Balance in Welt 4
| Testfall-ID | Beschreibung | Erwartetes Ergebnis | Priorität |
|-------------|--------------|---------------------|-----------|
| WLD4-BAL-001 | Chronomant in Welt 4 | Durchschnittliche Restzeit 16-19s | Hoch |
| WLD4-BAL-002 | Zeitwächter in Welt 4 | Durchschnittliche Restzeit 14-16s | Hoch |
| WLD4-BAL-003 | Schattenschreiter in Welt 4 | Durchschnittliche Restzeit 12-15s | Hoch |

## 5. Material- und Progressionstests

### 5.1 70/30-Materialverteilungstests
| Testfall-ID | Beschreibung | Erwartetes Ergebnis | Priorität |
|-------------|--------------|---------------------|-----------|
| MAT-DIST-001 | Welt 2 (Feuer) Materialdrops | 70% ±5% Feuermaterialien | Mittel |
| MAT-DIST-002 | Welt 3 (Eis) Materialdrops | 70% ±5% Eismaterialien | Mittel |
| MAT-DIST-003 | Welt 4 (Blitz) Materialdrops | 70% ±5% Blitzmaterialien | Mittel |
| MAT-DIST-004 | Welt 5 (Gemischt) Materialdrops | Ausgewogene Verteilung aller Materialien | Mittel |

### 5.2 End-to-End Progressionstests
| Testfall-ID | Beschreibung | Erwartetes Ergebnis | Priorität |
|-------------|--------------|---------------------|-----------|
| PROG-001 | 5-Welten-Chronomant-Progression | 25-30% des Decks evolviert (6-8 Karten) | Hoch |
| PROG-002 | 5-Welten-Zeitwächter-Progression | 20-25% des Decks evolviert (5-7 Karten) | Hoch |
| PROG-003 | 5-Welten-Schattenschreiter-Progression | 30-35% des Decks evolviert (8-9 Karten) | Hoch |

## 6. Automatisierte Regressionstests

### 6.1 Performance-Benchmarks
| Benchmark-ID | Beschreibung | Erfolgskriterium | Frequenz |
|--------------|--------------|------------------|----------|
| PERF-001 | DoT-Berechnung | <0,5ms pro Berechnung | Täglich |
| PERF-002 | Ketteneffekt-Rendering | <1ms pro Kettensprung | Täglich |
| PERF-003 | Zeitstasis-Berechnung | <0,2ms pro Zeitdiebstahl | Täglich |

### 6.2 Balancing-Validierung
Automatisierte Simulation von Standardkämpfen mit allen drei Klassen in allen fünf Welten, um ZEV-Werte (Zeiteffizienzverhältnis) und Restzeiten zu validieren.

```csharp
// Beispiel für automatisierte Kampfsimulation
public class CombatSimulator {
    // Sammelt Kampfergebnisse für Balancing-Validation
    public SimulationResults SimulateBattle(ClassType classType, int worldId, int iterations = 100) {
        SimulationResults results = new SimulationResults();
        
        for (int i = 0; i < iterations; i++) {
            // Standardisiertes Deck basierend auf Klassentyp
            Deck deck = DeckFactory.CreateStandardDeck(classType);
            
            // Welt-spezifische Mechanik
            BattleFieldEffect fieldEffect = FieldEffectFactory.CreateForWorld(worldId);
            
            // Gegnertypen basierend auf Welt
            List<Enemy> enemies = EnemyFactory.CreateForWorld(worldId);
            
            // Kampfsimulation
            BattleResult battleResult = BattleSimulator.Simulate(deck, enemies, fieldEffect);
            
            // Ergebnisse sammeln
            results.AddResult(battleResult);
        }
        
        return results;
    }
}
```

## 7. Validierungsprozess für DoT-Kategorie-System

Das DoT-Kategorie-System erfordert besondere Aufmerksamkeit, da es ein zentrales Spielelement ist. Die Validierung erfolgt in drei Stufen:

### 7.1 Unit-Tests
- Verifizierung der korrekten Kategorie-Zuweisung basierend auf Schadenswerten
- Validierung der exakten Zeitgewinnwerte (0,5/1,0/2,0s)
- Überprüfung der Zeitgewinn-Obergrenze (6,0s pro Kampf)

### 7.2 Integrationstests
- Interaktion zwischen DoT-System und Weltmechaniken
- Korrekte Visualisierung der verschiedenen DoT-Stärken
- Klassenübergreifende Konsistenz der DoT-Effekte

### 7.3 Benutzertests
- Verständlichkeit der DoT-Kategorien für neue Spieler
- Benutzerfreundlichkeit der visuellen Indikatoren
- Subjektive Zufriedenheit mit dem unmittelbaren Feedback

## 8. Testrollen und Verantwortlichkeiten

### 8.1 DoT-System-Validierung
- **Hauptverantwortlich**: Gameplay-Tester
- **Unterstützung**: UI/UX-Tester
- **Automatisierung**: Test-Entwickler für Unit-Tests

### 8.2 Weltmechanik-Balance
- **Hauptverantwortlich**: Balance-Tester
- **Unterstützung**: Gameplay-Tester
- **Automatisierung**: Test-Entwickler für Simulationen

### 8.3 Klassenbalance
- **Hauptverantwortlich**: Gameplay-Tester
- **Unterstützung**: Balance-Tester
- **Automatisierung**: Test-Entwickler für statistische Auswertung

## 9. Kontinuierliche Integration/Test-Pipeline

### 9.1 Automatisierte Testsuiten
- Unit-Tests für alle neuen Mechaniken bei jedem Commit
- Tägliche Balancing-Simulationen für alle Klassen
- Wöchentliche vollständige End-to-End-Tests für die Progression

### 9.2 Manuelle Testphasen
- Fokussierte Spieltests für jede neue Weltmechanik
- Cross-Klassen-Vergleichstests für Balancing
- Subjektive Bewertungstests für Spielgefühl und Feedback

## Quellendokumente
- ZK-TEST-v1.0-20250325: Ursprüngliche Teststrategie
- ZK-TIME-v1.1-20250327: Aktualisiertes Zeitsystem mit DoT-Kategorien
- ZK-BAL-v1.1-20250327: Aktualisiertes Balancing-Framework
- ZK-TEST-PLAYTEST-v1.0-20250327: Umfassende Spieltestergebnisse

## Abhängige Dokumente
- ZK-DUN-MECH-v1.0-20250327: Implementierungsdetails für Weltmechaniken
- ZK-WORLDS-v1.0-20250327: Weltendefinitionen für Akt 1
- ZK-DIFF-v1.0-20250327: Schwierigkeitsstufen-Definition