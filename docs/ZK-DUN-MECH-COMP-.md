# Dungeon-Mechaniken (ZK-DUN-MECH-COMP-v1.0-20250327)

## Änderungshistorie
- v1.0 (2025-03-27): Komprimierte Version basierend auf Spieltests und Balancing

## Zusammenfassung
Definiert alle Kampffeld-Effekte und weltspezifischen Mechaniken der fünf Welten mit Implementierungskonzepten und Balancing-Parametern.

## 1. BattleFieldEffect-Framework

### 1.1 Architektur
- **Basisklasse**: `BattleFieldEffect` (abstrakt)
- **Event-Registrierung**: Über zentralen `EventManager`
- **Event-Typen**: `OnCardPlayed`, `OnTurnStart`, `OnDoTApplied`, `OnTimeTheftAttempted`
- **Lebenszyklus**: `OnBattleStart()`, `OnUpdate()`, `OnBattleEnd()`

### 1.2 UI-Integration
- **Visueller Indikator**: Persistent am oberen Bildschirmrand
- **Status-Anzeige**: Fortschrittbalken, aktueller Effekt, verbleibende Zeit
- **Farbkodierung**: Weltelementspezifisch (Neutral/Feuer/Eis/Blitz/Gemischt)

### 1.3 Gemeinsame Parameter
```csharp
public abstract class BattleFieldEffect {
    // Zeitlich begrenzt oder permanent
    public bool IsPermanent { get; protected set; } = true;
    
    // Automatische Deaktivierung nach Zeit (wenn nicht permanent)
    public float Duration { get; protected set; } = 0f;
    
    // Ereignisanbindung, UI-Aktualisierung, Effektinitialisierung
    public abstract void OnBattleStart();
    
    // Aufräumarbeiten, Ereignisabmeldung
    public abstract void OnBattleEnd();
}
```

## 2. Welt 1: Neutrale Mechaniken

### 2.1 Zeitriss-Effekt
- **Klasse**: `TimeRiftField`
- **Mechanik**: Zeitrisse erscheinen an festen Positionen, geben bei Aktivierung +1,0s
- **Aktivierung**: Durch Karteneffekt, benötigt präzises Timing
- **Parameter**:
  - Zeitgewinn: 1,0s pro Riss
  - Optimales Aktivierungsfenster: 2,0s
  - Max. aktive Risse: 2 gleichzeitig
- **Implementierungshinweise**:
```csharp
// Deterministische Zeitriss-Aktivierung statt Zufallsspawns
private IEnumerator TimeRiftCycle() {
    // Feste Abfolge: Inaktiv (5s) → Öffnend (3s) → Optimal (2s) → Schließend (2s)
    while (true) {
        currentState = TimeRiftState.Inactive;
        UpdateVisualState();
        yield return new WaitForSeconds(5.0f);
        
        // Weitere Zustände...
    }
}
```

### 2.2 Schwankender Zeitfluss-Effekt
- **Klasse**: `FluctuatingTimeflowField`
- **Mechanik**: Kartenkosten wechseln alle 4 Züge zwischen +10% und -10%
- **Visuelle Indikatoren**: Blau (Beschleunigung, -10%), Rot (Verlangsamung, +10%)
- **Balance-Parameter**:
  - Wechselintervall: 4 Spielerzüge
  - Kostenmodifikation: ±10%
  - Kein Einfluss auf Zeitdiebstahl/Zeitgewinn

## 3. Welt 2: Feuer-Mechaniken

### 3.1 Zeitverbrennung-Effekt
- **Klasse**: `TimeBurningField`
- **Mechanik**: DoT-Kategoriesystem mit direktem Zeitgewinn bei Anwendung
- **Parameter**:
  - Schwacher DoT (1 Schaden/Tick): 0,5s Zeitgewinn
  - Mittlerer DoT (2-3 Schaden/Tick): 1,0s Zeitgewinn
  - Starker DoT (4+ Schaden/Tick): 2,0s Zeitgewinn
  - Max. Zeitgewinn pro Kampf: 6,0s (10% der Kampfzeit)
- **Implementierung**:
```csharp
private void HandleDoTApplication(DoTEffect dotEffect, DamageSource source) {
    // Nur Spieler-DoTs berücksichtigen
    if (source != DamageSource.Player) return;
    
    // Zeitgewinn basierend auf DoT-Kategorie
    float timeRefund = dotEffect.GetTimeRefund(); // 0,5s/1,0s/2,0s
    
    // Max. Zeitgewinn begrenzen
    timeRefund = Mathf.Min(timeRefund, maxTimeRefundPerBattle - totalTimeRefunded);
    timeManager.RefundTime(timeRefund);
    
    // Zähler aktualisieren
    totalTimeRefunded += timeRefund;
}
```

### 3.2 Zeittemperung-Effekt
- **Klasse**: `TimeTemperingField`
- **Mechanik**: DoT-Effekte verstärken nachfolgende Angriffe
- **Parameter**:
  - DoT-Kategorie → Angriffsbonus: Schwach +15%, Mittel +25%, Stark +40%
  - Verstärkungsdauer: 2 Spielerzüge
  - Visuelles Feedback: Glühende Waffen/Karten

## 4. Welt 3: Eis-Mechaniken

### 4.1 Zeitstasis-Effekt
- **Klasse**: `TimeStasisField`
- **Mechanik**: Reduziert Zeitdiebstahleffektivität um 40%
- **Parameter**:
  - Zeitdiebstahlreduktion: 40% (angepasst von 50%)
  - Visuelle Darstellung: Schimmernde Barriere um Timer
  - Kein Einfluss auf andere Zeitmanipulationen
- **Implementierung**:
```csharp
private void ModifyTimeTheft(TimeTheftEventArgs args) {
    // Zeitdiebstahl-Wert reduzieren
    float originalAmount = args.timeAmount;
    float reducedAmount = args.timeAmount * 0.6f; // 40% Reduktion
    
    // Wert im Event anpassen
    args.timeAmount = reducedAmount;
    
    // Visuelles Feedback nur bei gegnerischem Zeitdiebstahl
    if (args.source == TheftSource.Enemy) {
        VisualEffectManager.instance.PlayEffect("TimeTheftReduced", args.targetPosition);
    }
}
```

### 4.2 Kristallisierte Zeit-Effekt
- **Klasse**: `CrystallizedTimeField`
- **Mechanik**: Jede dritte gespielte Karte löst Gegner-Skip aus
- **Parameter**:
  - Skip-Auslöser: Nach 3 Karten
  - Zähler-Reset bei Auslösung
  - UI-Anzeige: Kristallzähler (1-3)
- **Balance-Hinweis**: Stark gegen Einzelgegner, weniger effektiv bei Gruppen

## 5. Welt 4: Blitz-Mechaniken

### 5.1 Chronoresonanz-Effekt
- **Klasse**: `ChronoResonanceField`
- **Mechanik**: Nach 2 gespielten Karten kostet die nächste 50% weniger + 0,5s Zeitgewinn
- **Parameter**:
  - Kartenanzahl: 2 (reduziert von 3)
  - Kostenreduktion: 50%
  - Zusätzlicher Zeitgewinn: 0,5s (neu)
- **Implementierung**:
```csharp
private void HandleCardPlayed(Card playedCard, CardPlayer player) {
    // Nur Spielerkarten
    if (player != CardPlayer.Player) return;
    
    // Zähler erhöhen
    cardPlayCounter++;
    
    // Prüfen, ob Resonanz ausgelöst wird
    if (cardPlayCounter >= 2) { // Reduziert von 3 auf 2
        // Resonanz aktivieren
        resonanceActive = true;
        
        // UI-Feedback
        BattleUI.instance.ShowResonanceReady("Chronoresonanz bereit!");
        
        // Zähler zurücksetzen
        cardPlayCounter = 0;
    }
    
    // Wenn Resonanz aktiv, Kosten reduzieren + Zeit zurückgeben
    if (resonanceActive) {
        float originalCost = playedCard.TimeCost;
        float reducedCost = originalCost * 0.5f;
        float timeRefund = originalCost - reducedCost + 0.5f; // +0,5s zusätzlich
        
        TimeManager.instance.RefundTime(timeRefund);
        resonanceActive = false;
    }
}
```

### 5.2 Zeitliche Entladung-Effekt
- **Klasse**: `TemporalDischargeField`
- **Mechanik**: Jede fünfte Karte kostet 0 Zeit
- **Parameter**:
  - Auslöser: 5 gespielte Karten
  - Effekt: Nächste Karte kostet 0 Zeit
  - Visuelles Feedback: Blitzeffekt bei Auslösung

## 6. Welt 5: Nexus-Mechaniken

### 6.1 Elementsymbiose-Effekt
- **Klasse**: `ElementalSymbiosisField`
- **Mechanik**: Elementwechsel verstärkt Effekte
- **Parameter**:
  - Verstärkung: 30% bei Wechsel des Elementartyps
  - Neutrale Karten: Zählen nicht für Elementwechsel
  - Gültige Elementwechsel: Feuer→Eis, Eis→Blitz, Blitz→Feuer (zyklisch)
- **Implementierungshinweis**: Effektwerte temporär erhöhen, nicht kumulativ

### 6.2 Temporales Echo-Effekt
- **Klasse**: `TemporalEchoField`
- **Mechanik**: Jede vierte Karte wird in der nächsten Runde automatisch wiederholt
- **Parameter**:
  - Auslöser: Vierte gespielte Karte
  - Echo-Effekt: Keine Zeitkosten, selbe Werte
  - Max. aktive Echos: 1
- **Implementierung**:
```csharp
// Bei Spielende aktives Echo abspielen
private void HandlePlayerTurnEnd() {
    if (cardToEcho != null) {
        BattleManager.instance.AddStartOfTurnAction(() => {
            VisualEffectManager.instance.PlayEffect("EchoActivation");
            BattleManager.instance.PlayCardCopy(cardToEcho, 0f);
            cardToEcho = null;
        });
    }
}
```

### 6.3 Zeitlinienkonvergenz-Effekt
- **Klasse**: `TimelineConvergenceField`
- **Mechanik**: Rundenbasierter Bonus-Wechsel
- **Parameter**: Deterministische 4-Runden-Sequenz:
  1. Schadensboost (+20%)
  2. Kostenreduktion (-15%)
  3. Kartenziehen (+1)
  4. Zeitgewinn (+1s)

## 7. Implementierungsrichtlinien

### 7.1 Aktivierung und Persistenz
- **Gültigkeitsdauer**: Feldeffekte bleiben für gesamten Kampf aktiv
- **Kampfwechsel**: Automatisches Zurücksetzen bei Kampfbeginn/-ende
- **Boss-Mechanik**: Feldeffektwechsel bei Phasenübergängen

### 7.2 Balancing-Metrik: ZEV-Modifikation
- **Definition**: ZEV = Effektwert/Zeitkosten (aus ZK-BAL)
- **Modifikator**: Feldeffekte dürfen ZEV um ±15% verändern
- **Sonderregel**: Boss-Feldeffekte dürfen ±25% abweichen

### 7.3 Feldeffekt-Kombination (Welt 5 und höher)
- **Dominanzregel**: Neu aktivierte Effekte ersetzen existierende
- **Boss-Ausnahme**: Bosse können mehrere Feldeffekte kombinieren
- **Konfliktlösung**: Bei widersprüchlichen Effekten gilt der zuletzt aktivierte

## Quellendokumente
- ZK-TIME-v1.0-20250325: Zeitsystem-Grundlagen
- ZK-BAL-v1.0-20250325: Balance-Framework
- ZK-TEST-PLAYTEST-v1.0-20250327: Spieltestergebnisse

## Abhängige Dokumente
- ZK-IMPL-FIELD-v1.0-20250327: Vollständige Implementierungsdetails
- ZK-WORLDS-COMP-v1.0-20250327: Weltensystem
- ZK-BAL-UPDATE-v1.1-20250327: Balance-Anpassungen
- ZK-DOKKOMP-COMP-v1.0-20250325: Kompressionsrichtlinien