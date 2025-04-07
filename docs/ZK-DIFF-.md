# Schwierigkeitssystem (ZK-DIFF-v1.0-20250327)

## Änderungshistorie
- v1.0 (2025-03-27): Initiale Version basierend auf Spieltests und Designdiskussionen

## Zusammenfassung
Definition des dreistufigen Schwierigkeitssystems von Zeitklingen mit progressiven Herausforderungen pro Stufe. Jede Schwierigkeitsstufe bietet modifizierte Spielparameter und angepasste Belohnungen für unterschiedliche Spielertypen und Fortschrittsstadien.

## 1. Schwierigkeitsstufenkonzept

### 1.1 Dreistufiges Progressionssystem
| Schwierigkeit | Freischaltung | Primärzielgruppe | Materialmodifikator |
|---------------|---------------|------------------|---------------------|
| Normal | Sofort verfügbar | Neue Spieler, Progression | 1.0× (Basis) |
| Heroisch | Nach Abschluss des entsprechenden Dungeons auf Normal | Erfahrene Spieler | 1.5× |
| Legendär | Nach Abschluss des entsprechenden Dungeons auf Heroisch | Hardcore-Spieler, Endgame | 2.5× |

### 1.2 Philosophie des Schwierigkeitssystems
- **Progressiv statt punitiv**: Höhere Schwierigkeiten bieten neue Herausforderungen, nicht nur höhere Zahlen
- **Deterministisch**: Keine zufälligen Schwierigkeitsspitzen, vorhersehbare Anpassungen
- **Belohnungsbasiert**: Höhere Schwierigkeiten rechtfertigen ihre Existenz durch bessere Belohnungen
- **Strategieerweiternd**: Jede Stufe fördert neue taktische Ansätze und Kartensynergien

## 2. Schwierigkeitsstufe: Normal

### 2.1 Spielparameter
- **Zeitlimit**: 60 Sekunden pro Kampf
- **Gegner-HP**: Basiswerte (100%)
- **Gegner-Schaden**: Basiswerte (100%)
- **Zeitdiebstahl-Limit**: 15% der Gesamtzeit (9s bei 60s Kampf)
- **Feldeffekt-Stärke**: Standard (100%)

### 2.2 Gegnerverhalten
- **Angriffsmuster**: Grundlegende, vorhersehbare Sequenzen
- **KI-Aggressivität**: Moderat, mit klaren Mustern
- **Zeitdiebstahl-Frequenz**: Niedrig, hauptsächlich bei Bossgegnern
- **Bossphasen**: 2 Phasen pro Boss (bei 66% und 33% HP)

### 2.3 Materialbelohnungen
- **Droprate**: Basiswerte gemäß ZK-MAT
- **Materialqualität**: Standard-Distribution (70/30-Verteilung)
- **Garantierte Drops**: Nur bei Dungeon-Abschluss

## 3. Schwierigkeitsstufe: Heroisch

### 3.1 Spielparameter
- **Zeitlimit**: 60 Sekunden pro Kampf (unverändert)
- **Gegner-HP**: Erhöht (125%)
- **Gegner-Schaden**: Erhöht (120%)
- **Zeitdiebstahl-Limit**: 18% der Gesamtzeit (10,8s bei 60s Kampf)
- **Feldeffekt-Stärke**: Verstärkt (125%)

### 3.2 Gegnerverhalten
- **Angriffsmuster**: Komplexere Sequenzen mit kombinierten Angriffen
- **KI-Aggressivität**: Erhöht, mit besserem Timing
- **Zeitdiebstahl-Frequenz**: Moderat, auch bei Standard-Gegnern
- **Bossphasen**: 3 Phasen pro Boss (bei 75%, 50%, 25% HP)
- **Spezialfähigkeiten**: Zusätzliche Mechaniken bei Elitegegnern und Bossen

### 3.3 Feldeffekt-Modifikationen
| Welt | Feldeffekt | Heroische Modifikation |
|------|------------|------------------------|
| 1 | Zeitrisse | Kürzeres Aktivierungsfenster (1,5s statt 2,0s) |
| 2 | Zeitverbrennung | Max. Zeitgewinn reduziert auf 5,0s (statt 6,0s) |
| 3 | Zeitstasis | Reduzierte Wirkung (30% statt 40%) |
| 4 | Chronoresonanz | Erhöhte Kartenanzahl (3 statt 2) für Auslösung |
| 5 | Elementsymbiose | Verkürzte Elementarbonus-Dauer |

### 3.4 Materialbelohnungen
- **Droprate**: Erhöht (150% des Basiswerts)
- **Materialqualität**: Verbesserte Seltenheitsverteilung (10% höhere Chance auf seltenere Materialien)
- **Garantierte Drops**: Bei Dungeon-Abschluss plus Elitegegnern

## 4. Schwierigkeitsstufe: Legendär

### 4.1 Spielparameter
- **Zeitlimit**: 50 Sekunden pro Kampf (reduziert)
- **Gegner-HP**: Stark erhöht (150%)
- **Gegner-Schaden**: Stark erhöht (140%)
- **Zeitdiebstahl-Limit**: 20% der Gesamtzeit (10s bei 50s Kampf)
- **Feldeffekt-Stärke**: Maximal (150%)

### 4.2 Gegnerverhalten
- **Angriffsmuster**: Komplexe, verkettete Sequenzen mit minimaler Telegrafierung
- **KI-Aggressivität**: Maximal, mit optimalem Timing
- **Zeitdiebstahl-Frequenz**: Hoch, bei fast allen Gegnern
- **Bossphasen**: 4 Phasen pro Boss (bei 80%, 60%, 40%, 20% HP)
- **Spezialfähigkeiten**: Vollständiges Fähigkeiten-Set bei allen Gegnern
- **Kombieffekte**: Mehrere aktive Feldeffekte gleichzeitig

### 4.3 Feldeffekt-Modifikationen
| Welt | Feldeffekt | Legendäre Modifikation |
|------|------------|------------------------|
| 1 | Zeitrisse | Zusätzlich: Zeitrausch (nach 3 aktivierten Rissen: alle Kartenkosten -25% für 5s) |
| 2 | Zeitverbrennung | Zusätzlich: Feuerrückschlag (DoT-Gegner verursachen Reflexionsschaden) |
| 3 | Zeitstasis | Zusätzlich: Eisgefängnis (nach 3 geblockten Zeitdiebstählen: +3s Zeitgewinn) |
| 4 | Chronoresonanz | Zusätzlich: Kettenblitz (jede 5. Karte verursacht Ketteneffekt auf alle Gegner) |
| 5 | Elementsymbiose | Zusätzlich: Elementarfusion (alle Elementareffekte verstärken sich gegenseitig) |

### 4.4 "Zweites Element"-Mechanik
- Jeder Dungeon erhält ein sekundäres Element, das mit dem Hauptelement interagiert
- Beispiel: Welt 2 (Feuer) + Blitz-Sekundärelement = brennende Ketteneffekte
- Erfordert Anpassung von Strategien und erweiterte Deck-Optimierung

### 4.5 Materialbelohnungen
- **Droprate**: Stark erhöht (250% des Basiswerts)
- **Materialqualität**: Hochwertig (25% höhere Chance auf seltenere Materialien)
- **Garantierte Drops**: Bei allen Kämpfen, mit zusätzlichen Seltenheitsstufen
- **Exklusive Materialien**: Nur auf Legendär erhältliche spezielle Materialien für Spezialevolutionen

## 5. Schwierigkeitsbalance

### 5.1 Klassen-Schwierigkeitsanpassung
| Klasse | Empfohlene Progression | Stärken auf höheren Schwierigkeiten |
|--------|------------------------|-------------------------------------|
| Chronomant | Normal → Heroisch → Legendär | Größte Anpassungsfähigkeit durch vielseitige Elementareffekte |
| Zeitwächter | Normal → Legendär → Heroisch | Defensiv stark, überlebt hohe Schwierigkeit besser |
| Schattenschreiter | Heroisch → Normal → Legendär | Erhöhte Effizienz bei verkürzter Kampfzeit auf Legendär |

### 5.2 Empfohlene Evolutionstiefe pro Schwierigkeit
| Schwierigkeit | Min. Evolutionsgrad | Optimale Evolution |
|---------------|---------------------|-------------------|
| Normal | 10% des Decks | 1-2 Karten Stufe 1, Rest Basis |
| Heroisch | 20% des Decks | 2-3 Karten Stufe 2, 3-4 Karten Stufe 1 |
| Legendär | 30% des Decks | 2-3 Karten Stufe 3, 3-4 Karten Stufe 2 |

### 5.3 Weltspezifische Schwierigkeitsverteilung
- **Welt 1**: Geringste Schwierigkeitssteigerung (Einstiegsfreundlich)
- **Welt 2-4**: Moderate Steigerung mit weltspezifischen Herausforderungen
- **Welt 5**: Höchste Schwierigkeitssteigerung (Endgame-Fokus)

## 6. Implementierungsrichtlinien

### 6.1 Schwierigkeitsauswahl-Interface
- Implementierung über Dungeon-Auswahl-Screen
- Visuelle Differenzierung durch Farbkodierung:
  - Normal: Blau
  - Heroisch: Gelb
  - Legendär: Rot
- Klare Anzeige der Anforderungen und Belohnungen pro Schwierigkeitsstufe

### 6.2 Fortschrittsanforderungen
- **Heroisch-Freischaltung**: Entsprechender Dungeon auf Normal abgeschlossen
- **Legendär-Freischaltung**: Entsprechender Dungeon auf Heroisch abgeschlossen + mind. 20% des Decks evolviert

### 6.3 Technische Implementierung
```csharp
public class DifficultyManager {
    // Schwierigkeitsstufen-Enum
    public enum DifficultyTier {
        Normal,
        Heroic,
        Legendary
    }
    
    // Aktuelle Schwierigkeitsstufe
    private DifficultyTier currentDifficulty = DifficultyTier.Normal;
    
    // Parameter-Modifikatoren pro Schwierigkeitsstufe
    private readonly Dictionary<DifficultyTier, DifficultyModifiers> difficultyModifiers = 
        new Dictionary<DifficultyTier, DifficultyModifiers> {
            { DifficultyTier.Normal, new DifficultyModifiers {
                EnemyHealthMultiplier = 1.0f,
                EnemyDamageMultiplier = 1.0f,
                FieldEffectStrengthMultiplier = 1.0f,
                TimeTheftLimitPercent = 0.15f,
                BattleTimeLimitSeconds = 60f,
                MaterialDropMultiplier = 1.0f
            }},
            { DifficultyTier.Heroic, new DifficultyModifiers {
                EnemyHealthMultiplier = 1.25f,
                EnemyDamageMultiplier = 1.2f,
                FieldEffectStrengthMultiplier = 1.25f,
                TimeTheftLimitPercent = 0.18f,
                BattleTimeLimitSeconds = 60f,
                MaterialDropMultiplier = 1.5f
            }},
            { DifficultyTier.Legendary, new DifficultyModifiers {
                EnemyHealthMultiplier = 1.5f,
                EnemyDamageMultiplier = 1.4f,
                FieldEffectStrengthMultiplier = 1.5f,
                TimeTheftLimitPercent = 0.2f,
                BattleTimeLimitSeconds = 50f,
                MaterialDropMultiplier = 2.5f
            }}
        };
        
    // Schwierigkeitsstufe abrufen
    public DifficultyModifiers GetCurrentModifiers() {
        return difficultyModifiers[currentDifficulty];
    }
    
    // Schwierigkeitsstufe setzen
    public void SetDifficulty(DifficultyTier difficulty) {
        // Prüfen, ob Schwierigkeitsstufe freigeschaltet ist
        if (IsDifficultyUnlocked(difficulty)) {
            currentDifficulty = difficulty;
            // Benachrichtigung an andere Systeme senden
            EventManager.Instance.RaiseDifficultyChanged(currentDifficulty);
        }
    }
    
    // Weitere Implementierungsdetails...
}
```

## 7. Testprioritäten

### 7.1 Schlüssel-Testszenarien
- **Grundbalance**: Restzeit-Verteilung auf allen Schwierigkeitsstufen
- **Klassen-Ausgewogenheit**: Performance aller drei Klassen auf höheren Schwierigkeiten
- **Material-Progression**: Materialsammlung und Evolutionsrate durch Schwierigkeitsstufen

### 7.2 Gefahr-Testfälle
- **Progression-Blocker**: Identifizierung von übermäßig schweren Engpässen
- **Klassen-Ungleichgewichte**: Extreme Vorteile/Nachteile bestimmter Klassen auf höheren Schwierigkeiten
- **Belohnungs-Überkompensation**: Zu schnelle Materialsammlung auf Legendär

## Quellendokumente
- ZK-BAL-v1.1-20250327: Balancing-Framework und Parameter
- ZK-TEST-PLAYTEST-v1.0-20250327: Spieltestergebnisse
- ZK-TIME-v1.1-20250327: Zeitsystem mit DoT-Kategorien

## Abhängige Dokumente
- ZK-WORLDS-v1.0-20250327: Weltensystem (Akt 1)
- ZK-DUN-MECH-v1.0-20250327: Dungeon-Mechaniken
- ZK-MAT-v1.1-20250327: Materialverteilungssystem