# Technischer Designleitfaden (ZK-TECH-COMP-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-25): Komprimierte Version von ZK-TECH-v1.0-20250325
- v1.1 (2025-03-27): Integration des DoT-Kategorie-Systems, optimierte Code-Strukturen für Feldeffekte, Performance-Optimierungen für Ketteneffekte

## Zusammenfassung
Dieses Dokument definiert die technische Architektur, Implementierungsstandards und Best Practices für das Zeitklingen-Projekt mit besonderem Fokus auf die neuen Systeme. Aktualisierungen beinhalten das DoT-Kategorie-System, optimierte Kampffeld-Effekte und angepasste Ketteneffekte.

## 1. Architektur und Designpatterns

### 1.1 Gesamtarchitektur
```
┌── SCHICHTENARCHITEKTUR ──┐
│                          │
│  PRÄSENTATION            │
│  • UI Views              │
│  • SFX                   │
│         │                │
│         ▼                │
│  LOGIK                   │
│  • Controllers           │
│  • Managers              │
│         │                │
│         ▼                │
│  DATEN                   │
│  • Model                 │
│  • Persistence           │
│                          │
└──────────────────────────┘
```

### 1.2 Erweiterte Core Design Patterns
1. **MVC (Model-View-Controller)**
   - Model: Erweitert um DoT-Kategorie-Enums und Feldeffekt-Zustände
   - View: Neue Visualisierung für DoT-Kategorien und Kampffeld-Effekte
   - Controller: Implementierung der 60s-Standardkampfzeit und Integration der Feldeffekte

2. **Factory Pattern für Kampffeld-Effekte**
   ```csharp
   public class BattleFieldEffectFactory {
       public static BattleFieldEffect CreateFieldEffect(WorldType worldType) {
           switch (worldType) {
               case WorldType.TimeSpiralValley:
                   return new FluctuatingTimeflowField();
               case WorldType.FlameChronoForge:
                   return new TimeBurningField();
               case WorldType.IceAgeFortress:
                   return new TimeStasisField();
               case WorldType.StormSphere:
                   return new ChronoResonanceField();
               case WorldType.ChronosNexus:
                   return new ElementalSymbiosisField();
               default:
                   return new NeutralField();
           }
       }
   }
   ```

3. **Observer Pattern für Kampffeld-Ereignisse**
   - Zentralisiertes Event-System für Kampffeld-Effekt-Updates
   - Optimierte Benachrichtigungsketten für UI-Updates

4. **Strategy Pattern für DoT-Kategorisierung**
   ```csharp
   public interface IDoTCategoryStrategy {
       DoTCategory CategorizeDoT(float damagePerTick);
       float GetTimeRefund(DoTCategory category);
   }
   
   public class StandardDoTCategoryStrategy : IDoTCategoryStrategy {
       public DoTCategory CategorizeDoT(float damagePerTick) {
           if (damagePerTick >= 4f) return DoTCategory.Major;
           else if (damagePerTick >= 2f) return DoTCategory.Medium;
           else return DoTCategory.Minor;
       }
       
       public float GetTimeRefund(DoTCategory category) {
           switch (category) {
               case DoTCategory.Minor: return 0.5f;
               case DoTCategory.Medium: return 1.0f;
               case DoTCategory.Major: return 2.0f;
               default: return 0f;
           }
       }
   }
   ```

## 2. Neue Subsystem-Architekturen

### 2.1 DoT-Kategorie-Subsystem
```
DoTSystem
 ├── DoTEffect
 │    ├── Properties
 │    │   ├── DamagePerTick: float
 │    │   ├── Duration: float
 │    │   ├── Strength: DoTStrength (Minor/Medium/Major)
 │    │   └── TimeRefund: float (0.5/1.0/2.0)
 │    └── Methods
 │        ├── Apply(target): void
 │        └── GetTimeRefund(): float
 ├── DoTManager
 │    ├── Properties
 │    │   ├── ActiveEffects: List<DoTEffect>
 │    │   └── MaxTimeRefundPerBattle: float (6.0f)
 │    └── Methods
 │        ├── ApplyDoT(effect, source): void
 │        ├── ProcessDoTTicks(): void
 │        └── GetCurrentTimeRefunded(): float
 └── DoTVisualization
     └── Methods
         ├── ShowDoTIndicator(target, strength): void
         └── ShowTimeRefund(amount): void
```

### 2.2 Kampffeld-Effekt-Subsystem
```
BattleFieldSystem
 ├── BattleFieldEffect (abstract)
 │    ├── Properties
 │    │   ├── EffectType: FieldEffectType
 │    │   └── IsActive: bool
 │    └── Methods
 │        ├── OnBattleStart(): void
 │        ├── OnTurnStart(): void
 │        ├── OnCardPlayed(card): void
 │        ├── OnDoTApplied(effect): void
 │        └── OnBattleEnd(): void
 ├── TimeBurningField : BattleFieldEffect
 ├── TimeStasisField : BattleFieldEffect
 ├── ChronoResonanceField : BattleFieldEffect
 ├── ElementalSymbiosisField : BattleFieldEffect
 └── BattleFieldManager
     ├── Properties
     │   ├── CurrentField: BattleFieldEffect
     │   └── WorldType: WorldType
     └── Methods
         ├── SetActiveField(field): void
         └── ProcessFieldEvents(): void
```

### 2.3 Optimiertes Chain-Effect-Subsystem
```
ChainSystem
 ├── ChainLightningEffect
 │    ├── Properties
 │    │   ├── DamageTransferPercent: 0.7f (reduziert von 0.8f)
 │    │   ├── MaxChainTargets: int
 │    │   └── ChainRange: 4.0f (reduziert von 5.0f)
 │    └── Methods
 │        ├── ApplyChainDamage(source, targets): void
 │        └── CalculateChainDamage(baseDamage, jumps): float
 └── ChainVisualizer
      └── Methods
          ├── CreateChainEffect(start, end): void
          └── AnimateChain(strength): void
```

## 3. Performance-Optimierung

### 3.1 Ketteneffekt-Optimierung
```csharp
// Optimierte Implementierung der Ketteneffekte
public class OptimizedChainLightningEffect : CardEffect {
    // Reduzierte Kettenwerte für bessere Performance und Balance
    public float chainRange = 4.0f; // Reduziert von 5.0f
    public float damageTransferPercent = 0.7f; // Reduziert von 0.8f
    public int maxChains = 2; // Je nach Kartenstufe
    
    // Objektpool für visuelle Effekte
    private static ObjectPool<LineRenderer> chainEffectPool;
    
    // Ziel-Caching für schnellere Erreichbarkeitsberechnung
    private Dictionary<GameObject, List<GameObject>> reachableTargetsCache = new Dictionary<GameObject, List<GameObject>>();
    
    // Optimierte Kettenberechnung
    public void ApplyChainDamage(GameObject source, List<GameObject> potentialTargets, float baseDamage) {
        // Leere Prüfung
        if (potentialTargets == null || potentialTargets.Count == 0) return;
        
        // Aktueller Kettenursprung
        GameObject currentSource = source;
        float currentDamage = baseDamage;
        
        // Getroffene Ziele verfolgen
        HashSet<GameObject> hitTargets = new HashSet<GameObject>();
        
        // Ketten durchführen
        for (int jump = 0; jump < maxChains; jump++) {
            // Optimiertes Finden des nächsten Ziels
            GameObject nextTarget = FindNextTarget(currentSource, potentialTargets, hitTargets);
            if (nextTarget == null) break;
            
            // Aktualisieren des Schadens mit reduzierten Übertragungswerten
            currentDamage *= damageTransferPercent; // Jetzt 70% statt 80%
            
            // Schaden anwenden
            Enemy enemy = nextTarget.GetComponent<Enemy>();
            if (enemy != null) {
                enemy.TakeDamage(currentDamage);
            }
            
            // Visuellen Effekt aus Pool holen
            LineRenderer chainEffect = GetChainEffectFromPool();
            SetupChainVisual(chainEffect, currentSource.transform.position, nextTarget.transform.position);
            
            // Zu getroffenen Zielen hinzufügen
            hitTargets.Add(nextTarget);
            
            // Für nächsten Sprung vorbereiten
            currentSource = nextTarget;
        }
    }
    
    // Optimierte Zielfindung mit Spatial-Partitioning
    private GameObject FindNextTarget(GameObject source, List<GameObject> potentialTargets, HashSet<GameObject> hitTargets) {
        // Cache für erreichbare Ziele prüfen
        if (!reachableTargetsCache.TryGetValue(source, out List<GameObject> reachableTargets)) {
            reachableTargets = new List<GameObject>();
            foreach (GameObject target in potentialTargets) {
                if (!hitTargets.Contains(target) && 
                    Vector3.Distance(source.transform.position, target.transform.position) <= chainRange) {
                    reachableTargets.Add(target);
                }
            }
            // Im Cache speichern
            reachableTargetsCache[source] = reachableTargets;
        }
        
        // Nächstes Ziel basierend auf Distanz finden
        GameObject closestTarget = null;
        float closestDistance = float.MaxValue;
        
        foreach (GameObject target in reachableTargets) {
            if (hitTargets.Contains(target)) continue;
            
            float distance = Vector3.Distance(source.transform.position, target.transform.position);
            if (distance <= chainRange && distance < closestDistance) {
                closestTarget = target;
                closestDistance = distance;
            }
        }
        
        return closestTarget;
    }
    
    // Objekt-Pooling für visuelle Effekte
    private LineRenderer GetChainEffectFromPool() {
        if (chainEffectPool == null) {
            chainEffectPool = new ObjectPool<LineRenderer>(
                CreateChainEffect,
                OnGetFromPool,
                OnReleaseToPool,
                OnDestroyPooledObject,
                true, 10, 20
            );
        }
        
        return chainEffectPool.Get();
    }
    
    // Pool-Callbacks
    private LineRenderer CreateChainEffect() {
        GameObject obj = new GameObject("ChainEffect");
        LineRenderer lr = obj.AddComponent<LineRenderer>();
        // LineRenderer konfigurieren
        lr.startWidth = 0.1f;
        lr.endWidth = 0.05f;
        lr.material = Resources.Load<Material>("Materials/ChainLightning");
        return lr;
    }
    
    private void OnGetFromPool(LineRenderer obj) {
        obj.gameObject.SetActive(true);
    }
    
    private void OnReleaseToPool(LineRenderer obj) {
        obj.gameObject.SetActive(false);
    }
    
    private void OnDestroyPooledObject(LineRenderer obj) {
        GameObject.Destroy(obj.gameObject);
    }
    
    // Visuellen Effekt einrichten
    private void SetupChainVisual(LineRenderer chainEffect, Vector3 start, Vector3 end) {
        chainEffect.SetPosition(0, start);
        chainEffect.SetPosition(1, end);
        
        // Nach kurzer Zeit zum Pool zurückgeben
        PoolTimer.Instance.ScheduleAction(() => {
            chainEffectPool.Release(chainEffect);
        }, 0.5f);
    }
}
```

### 3.2 DoT-System-Optimierung
```csharp
// Optimierte DoT-Effekt-Implementierung
public class OptimizedDoTEffect : CardEffect {
    // DoT-Kategorien
    public enum DoTCategory {
        Minor,  // Schwacher DoT
        Medium, // Mittlerer DoT
        Major   // Starker DoT
    }
    
    // Eigenschaften mit Auto-Kategorisierung
    private float _damagePerTick;
    public float DamagePerTick {
        get { return _damagePerTick; }
        set { 
            _damagePerTick = value;
            // Bei Änderung Kategorie automatisch aktualisieren
            UpdateCategory();
        }
    }
    
    public float Duration { get; set; }
    public DoTCategory Category { get; private set; }
    
    // Konstruktor mit automatischer Kategorisierung
    public OptimizedDoTEffect(float damagePerTick, float duration) {
        DamagePerTick = damagePerTick;
        Duration = duration;
        UpdateCategory();
    }
    
    // Kategorie basierend auf DamagePerTick aktualisieren
    private void UpdateCategory() {
        if (_damagePerTick >= 4f) {
            Category = DoTCategory.Major;
        }
        else if (_damagePerTick >= 2f) {
            Category = DoTCategory.Medium;
        }
        else {
            Category = DoTCategory.Minor;
        }
    }
    
    // Zeitgewinn basierend auf Kategorie
    public float GetTimeRefund() {
        switch (Category) {
            case DoTCategory.Minor:
                return 0.5f;
            case DoTCategory.Medium:
                return 1.0f;
            case DoTCategory.Major:
                return 2.0f;
            default:
                return 0f;
        }
    }
    
    // Optimierte Anwendung mit Event-Auslösung
    public override void Apply(GameObject target) {
        // DoT dem Ziel hinzufügen
        DoTManager dotManager = target.GetComponent<DoTManager>();
        if (dotManager != null) {
            dotManager.AddDoTEffect(this);
            
            // DoT-Event auslösen
            EventManager.Instance.TriggerDoTApplied(this, target);
        }
    }
}
```

### 3.3 Kampffeld-Effekt-Optimierung
```csharp
// Optimiertes Kampffeld-Manager-Singleton
public class BattleFieldManager : MonoBehaviour {
    // Singleton-Instanz
    public static BattleFieldManager Instance { get; private set; }
    
    // Aktueller Feldeffekt
    private BattleFieldEffect _currentFieldEffect;
    public BattleFieldEffect CurrentFieldEffect => _currentFieldEffect;
    
    // Feldeffekt-Factory
    private BattleFieldEffectFactory _fieldFactory;
    
    // Initialisierung
    private void Awake() {
        if (Instance != null && Instance != this) {
            Destroy(gameObject);
            return;
        }
        
        Instance = this;
        DontDestroyOnLoad(gameObject);
        
        _fieldFactory = new BattleFieldEffectFactory();
    }
    
    // Feldeffekt für aktuelle Welt setzen
    public void SetFieldEffectForWorld(WorldType worldType) {
        // Alten Effekt entfernen
        if (_currentFieldEffect != null) {
            _currentFieldEffect.OnBattleEnd();
        }
        
        // Neuen Effekt erstellen
        _currentFieldEffect = _fieldFactory.CreateFieldEffect(worldType);
        
        // Neuen Effekt initialisieren
        _currentFieldEffect.OnBattleStart();
        
        // UI aktualisieren
        BattleUI.Instance.UpdateFieldEffectDisplay(_currentFieldEffect);
    }
    
    // Kampfende-Bereinigung
    public void OnBattleEnd() {
        if (_currentFieldEffect != null) {
            _currentFieldEffect.OnBattleEnd();
        }
    }
}

// Optimierte Zeitstasis-Implementierung für Welt 3
public class TimeStasisField : BattleFieldEffect {
    // Reduktion der Effektivität von Zeitdiebstahl (auf 40% reduziert)
    public float timeTheftReductionPercent = 0.4f; // Vorher 0.5f
    
    // Visueller Indikator
    private GameObject stasisFieldIndicator;
    
    // Wird beim Kampfstart aufgerufen
    public override void OnBattleStart() {
        // Zeitdiebstahl-Event-Listener registrieren
        EventManager.Instance.OnTimeTheftAttempted += ModifyTimeTheft;
        
        // Visuellen Indikator erstellen
        stasisFieldIndicator = Instantiate(Resources.Load<GameObject>("Prefabs/StasisFieldIndicator"));
        
        // UI aktualisieren
        BattleUI.Instance.ShowFieldEffectActivation("Zeitstasis: Zeitdiebstahl 40% weniger effektiv");
    }
    
    // Modifiziert Zeitdiebstahl-Events
    private void ModifyTimeTheft(TimeTheftEventArgs args) {
        // Ursprünglichen Wert speichern
        float originalAmount = args.timeAmount;
        
        // Reduzieren des Zeitdiebstahls um 40%
        args.timeAmount *= (1f - timeTheftReductionPercent);
        
        // Nur bei gegnerischem Zeitdiebstahl visuelles Feedback
        if (args.source == TheftSource.Enemy) {
            VisualEffectManager.Instance.PlayEffect("TimeTheftReduced", args.targetPosition);
            BattleUI.Instance.ShowTimeTheftReduction(originalAmount, args.timeAmount);
        }
    }
    
    // Wird beim Kampfende aufgerufen
    public override void OnBattleEnd() {
        // Event-Listener entfernen
        EventManager.Instance.OnTimeTheftAttempted -= ModifyTimeTheft;
        
        // Visuellen Indikator entfernen
        if (stasisFieldIndicator != null) {
            Destroy(stasisFieldIndicator);
        }
    }
}

// Optimierte Chronoresonanz-Implementierung für Welt 4
public class ChronoResonanceField : BattleFieldEffect {
    // Anzahl der Karten für Resonanzaktivierung
    public int cardsRequiredForResonance = 2; // Reduziert von 3
    
    // Kostenreduktion für die Resonanzkarte
    public float costReductionPercent = 0.5f;
    
    // Zeitgewinn bei Resonanzaktivierung (neu)
    public float timeRefundAmount = 0.5f;
    
    // Zähler für gespielte Karten
    private int cardPlayCounter = 0;
    
    // Resonanz aktiv?
    private bool resonanceActive = false;
    
    // Initialisierung
    public override void OnBattleStart() {
        // Event-Listener registrieren
        EventManager.Instance.OnCardPlayed += HandleCardPlayed;
        
        // Zähler zurücksetzen
        cardPlayCounter = 0;
        resonanceActive = false;
        
        // UI aktualisieren
        BattleUI.Instance.ShowFieldEffectActivation("Chronoresonanz: 2 Karten → Nächste -50% Kosten +0,5s");
    }
    
    // Kartenspiel-Behandlung
    private void HandleCardPlayed(Card card, CardPlayer player) {
        // Nur Spielerkarten
        if (player != CardPlayer.Player) return;
        
        // Wenn Resonanz aktiv
        if (resonanceActive) {
            // Kostenreduktion berechnen
            float originalCost = card.TimeCost;
            float reducedCost = originalCost * (1f - costReductionPercent);
            
            // Kostendifferenz + zusätzlicher Zeitgewinn
            float timeToRefund = (originalCost - reducedCost) + timeRefundAmount;
            
            // Zeit zurückerstatten
            TimeManager.Instance.RefundTime(timeToRefund);
            
            // Visuelles Feedback
            VisualEffectManager.Instance.PlayEffect("ResonanceActivated", card.transform.position);
            BattleUI.Instance.ShowResonanceTimeGained(originalCost - reducedCost, timeRefundAmount);
            
            // Resonanz verbrauchen
            resonanceActive = false;
            
            // Zähler wird 1 (diese Karte zählt für nächste Resonanz)
            cardPlayCounter = 1;
        }
        else {
            // Zähler erhöhen
            cardPlayCounter++;
            
            // UI aktualisieren
            BattleUI.Instance.UpdateFieldEffectCounter(cardPlayCounter, cardsRequiredForResonance);
            
            // Prüfen, ob Resonanz ausgelöst wird
            if (cardPlayCounter >= cardsRequiredForResonance) {
                // Resonanz aktivieren
                resonanceActive = true;
                
                // Visuelles Feedback
                VisualEffectManager.Instance.PlayEffect("ResonanceCharged", Vector3.zero);
                BattleUI.Instance.ShowResonanceReady("Chronoresonanz bereit: Nächste Karte -50% Kosten +0,5s!");
                
                // Zähler zurücksetzen (wird in nächstem Durchlauf auf 1 gesetzt)
                cardPlayCounter = 0;
            }
        }
    }
    
    // Aufräumen beim Kampfende
    public override void OnBattleEnd() {
        // Event-Listener entfernen
        EventManager.Instance.OnCardPlayed -= HandleCardPlayed;
    }
}
```

## 4. UI-Optimierungen für neue Systeme

### 4.1 DoT-Kategorie-Visualisierung
```csharp
public class DoTVisualizationManager : MonoBehaviour {
    // Singleton-Instanz
    public static DoTVisualizationManager Instance { get; private set; }
    
    // Konfiguration
    [Header("DoT-Kategorie-Visualisierung")]
    [SerializeField] private Color minorDoTColor = new Color(1.0f, 0.8f, 0.2f); // Hellgelb
    [SerializeField] private Color mediumDoTColor = new Color(1.0f, 0.6f, 0.0f); // Orange
    [SerializeField] private Color majorDoTColor = new Color(1.0f, 0.3f, 0.0f); // Dunkelorange/Rot
    
    [SerializeField] private Sprite minorDoTIcon;
    [SerializeField] private Sprite mediumDoTIcon;
    [SerializeField] private Sprite majorDoTIcon;
    
    [SerializeField] private GameObject doTIndicatorPrefab;
    [SerializeField] private GameObject timeGainTextPrefab;
    
    // Initialisierung
    private void Awake() {
        if (Instance != null && Instance != this) {
            Destroy(gameObject);
            return;
        }
        
        Instance = this;
    }
    
    // DoT-Indikator über Gegner anzeigen
    public void ShowDoTIndicator(GameObject target, DoTEffect.DoTCategory category) {
        // Indikator instantiieren
        GameObject indicator = Instantiate(doTIndicatorPrefab, target.transform);
        
        // Referenzen erhalten
        Image iconImage = indicator.GetComponent<Image>();
        Text strengthText = indicator.GetComponentInChildren<Text>();
        
        // Basierend auf Kategorie konfigurieren
        ConfigureDoTIndicator(iconImage, strengthText, category);
        
        // Animation starten
        StartDoTAnimation(indicator);
    }
    
    // DoT-Indikator konfigurieren
    private void ConfigureDoTIndicator(Image iconImage, Text strengthText, DoTEffect.DoTCategory category) {
        switch (category) {
            case DoTEffect.DoTCategory.Minor:
                iconImage.sprite = minorDoTIcon;
                iconImage.color = minorDoTColor;
                strengthText.text = "●";
                break;
            case DoTEffect.DoTCategory.Medium:
                iconImage.sprite = mediumDoTIcon;
                iconImage.color = mediumDoTColor;
                strengthText.text = "●●";
                break;
            case DoTEffect.DoTCategory.Major:
                iconImage.sprite = majorDoTIcon;
                iconImage.color = majorDoTColor;
                strengthText.text = "●●●";
                break;
        }
    }
    
    // Zeitgewinn-Feedback anzeigen
    public void ShowDoTTimeGain(float amount, DoTEffect.DoTCategory category) {
        // Textobjekt erstellen
        GameObject timeGainText = Instantiate(timeGainTextPrefab, transform);
        
        // Text konfigurieren
        Text text = timeGainText.GetComponent<Text>();
        text.text = $"+{amount}s";
        
        // Farbe basierend auf DoT-Kategorie
        switch (category) {
            case DoTEffect.DoTCategory.Minor:
                text.color = minorDoTColor;
                break;
            case DoTEffect.DoTCategory.Medium:
                text.color = mediumDoTColor;
                break;
            case DoTEffect.DoTCategory.Major:
                text.color = majorDoTColor;
                break;
        }
        
        // Animation starten
        StartTimeGainAnimation(timeGainText);
    }
    
    // Animationen
    private void StartDoTAnimation(GameObject indicator) {
        // Skalierung animieren
        LeanTween.scale(indicator, new Vector3(1.2f, 1.2f, 1.2f), 0.3f).setLoopPingPong(1);
        
        // Nach Verzögerung entfernen
        Destroy(indicator, 2.0f);
    }
    
    private void StartTimeGainAnimation(GameObject textObject) {
        // Startposition
        RectTransform rect = textObject.GetComponent<RectTransform>();
        Vector2 startPos = rect.anchoredPosition;
        
        // Animation: Nach oben driften und verblassen
        LeanTween.moveY(rect, startPos.y + 50f, 1.0f).setEaseOutCubic();
        LeanTween.alphaCanvas(textObject.GetComponent<CanvasGroup>(), 0f, 1.0f).setDelay(0.5f);
        
        // Nach Animation zerstören
        Destroy(textObject, 1.5f);
    }
}
```

### 4.2 Kampffeld-Effekt-Visualisierung
```csharp
public class BattleFieldEffectUI : MonoBehaviour {
    // UI-Elemente
    [SerializeField] private Text fieldNameText;
    [SerializeField] private Text fieldDescriptionText;
    [SerializeField] private Text fieldStatusText;
    [SerializeField] private Image fieldProgressBar;
    [SerializeField] private GameObject fieldEffectPanel;
    
    // DoT-Kategorien-Anzeige
    [SerializeField] private Text lastDoTCategoryText;
    [SerializeField] private Image lastDoTCategoryIcon;
    
    // Chronoresonanz-Anzeige
    [SerializeField] private GameObject resonanceIndicator;
    [SerializeField] private Text resonanceCounterText;
    
    // Zeitstasis-Anzeige
    [SerializeField] private GameObject stasisIndicator;
    [SerializeField] private Text stasisReductionText;
    
    // UI aktualisieren
    public void UpdateFieldEffectDisplay(BattleFieldEffect effect) {
        // Panel aktivieren
        fieldEffectPanel.SetActive(true);
        
        // Grundlegende Informationen aktualisieren
        if (effect is TimeBurningField) {
            UpdateTimeBurningUI((TimeBurningField)effect);
        }
        else if (effect is TimeStasisField) {
            UpdateTimeStasisUI((TimeStasisField)effect);
        }
        else if (effect is ChronoResonanceField) {
            UpdateChronoResonanceUI((ChronoResonanceField)effect);
        }
        else if (effect is ElementalSymbiosisField) {
            UpdateElementalSymbiosisUI((ElementalSymbiosisField)effect);
        }
        else {
            // Neutrales Feld oder anderer Typ
            fieldNameText.text = "Standard-Kampffeld";
            fieldDescriptionText.text = "Keine speziellen Effekte aktiv";
            fieldStatusText.text = "";
            fieldProgressBar.fillAmount = 0f;
        }
    }
    
    // TimeBurning UI
    private void UpdateTimeBurningUI(TimeBurningField field) {
        // Basisinformationen
        fieldNameText.text = "KAMPFFELD: Zeitverbrennung";
        fieldDescriptionText.text = "DoT-Effekte gewähren sofortigen Zeitgewinn";
        
        // Fortschritt anzeigen
        float progress = field.GetCurrentTimeRefunded() / field.GetMaxTimeRefundPerBattle();
        fieldProgressBar.fillAmount = progress;
        
        // Status anzeigen
        fieldStatusText.text = $"ZEITGEWINN: {field.GetCurrentTimeRefunded():F1}s / {field.GetMaxTimeRefundPerBattle():F1}s";
        
        // DoT-Kategorien-Anzeige sichtbar
        lastDoTCategoryText.gameObject.SetActive(true);
        lastDoTCategoryIcon.gameObject.SetActive(true);
        
        // Andere Indikatoren ausblenden
        resonanceIndicator.SetActive(false);
        stasisIndicator.SetActive(false);
    }
    
    // TimeStasis UI
    private void UpdateTimeStasisUI(TimeStasisField field) {
        // Basisinformationen
        fieldNameText.text = "KAMPFFELD: Zeitstasis";
        fieldDescriptionText.text = "Zeitdiebstahl 40% weniger effektiv";
        
        // Status anzeigen
        fieldStatusText.text = "AKTIV: Zeitdiebstahlreduktion 40%";
        
        // Zeitstasis-Indikator aktivieren
        stasisIndicator.SetActive(true);
        stasisReductionText.text = "40%";
        
        // Andere Indikatoren ausblenden
        lastDoTCategoryText.gameObject.SetActive(false);
        lastDoTCategoryIcon.gameObject.SetActive(false);
        resonanceIndicator.SetActive(false);
    }
    
    // ChronoResonance UI
    private void UpdateChronoResonanceUI(ChronoResonanceField field) {
        // Basisinformationen
        fieldNameText.text = "KAMPFFELD: Chronoresonanz";
        fieldDescriptionText.text = "2 Karten → Nächste -50% Kosten +0,5s";
        
        // Fortschritt anzeigen
        int counter = field.GetCardCounter();
        int required = field.GetCardsRequiredForResonance();
        float progress = (float)counter / required;
        fieldProgressBar.fillAmount = progress;
        
        // Status anzeigen
        fieldStatusText.text = $"FORTSCHRITT: {counter}/{required} Karten";
        
        // Resonanz-Indikator aktivieren
        resonanceIndicator.SetActive(true);
        resonanceCounterText.text = $"{counter}/{required}";
        
        // Andere Indikatoren ausblenden
        lastDoTCategoryText.gameObject.SetActive(false);
        lastDoTCategoryIcon.gameObject.SetActive(false);
        stasisIndicator.SetActive(false);
    }
    
    // ElementalSymbiosis UI
    private void UpdateElementalSymbiosisUI(ElementalSymbiosisField field) {
        // Basisinformationen
        fieldNameText.text = "KAMPFFELD: Elementsymbiose";
        fieldDescriptionText.text = "Elementwechsel verstärkt nächstes Element";
        
        // Status anzeigen
        ElementType lastElement = field.GetLastElement();
        fieldStatusText.text = $"LETZTES ELEMENT: {GetElementName(lastElement)}";
        
        // Andere Indikatoren ausblenden
        lastDoTCategoryText.gameObject.SetActive(false);
        lastDoTCategoryIcon.gameObject.SetActive(false);
        resonanceIndicator.SetActive(false);
        stasisIndicator.SetActive(false);
    }
    
    // DoT-Kategorien-Anzeige aktualisieren
    public void UpdateDoTCategoryDisplay(DoTEffect.DoTCategory category) {
        // DoT-Anzeige aktivieren
        lastDoTCategoryText.gameObject.SetActive(true);
        lastDoTCategoryIcon.gameObject.SetActive(true);
        
        // Text und Icon aktualisieren
        switch (category) {
            case DoTEffect.DoTCategory.Minor:
                lastDoTCategoryText.text = "AKTIVER DoT: SCHWACH";
                lastDoTCategoryIcon.sprite = DoTVisualizationManager.Instance.GetMinorDoTIcon();
                lastDoTCategoryIcon.color = DoTVisualizationManager.Instance.GetMinorDoTColor();
                break;
            case DoTEffect.DoTCategory.Medium:
                lastDoTCategoryText.text = "AKTIVER DoT: MITTEL";
                lastDoTCategoryIcon.sprite = DoTVisualizationManager.Instance.GetMediumDoTIcon();
                lastDoTCategoryIcon.color = DoTVisualizationManager.Instance.GetMediumDoTColor();
                break;
            case DoTEffect.DoTCategory.Major:
                lastDoTCategoryText.text = "AKTIVER DoT: STARK";
                lastDoTCategoryIcon.sprite = DoTVisualizationManager.Instance.GetMajorDoTIcon();
                lastDoTCategoryIcon.color = DoTVisualizationManager.Instance.GetMajorDoTColor();
                break;
        }
    }
    
    // Elementnamen abrufen
    private string GetElementName(ElementType elementType) {
        switch (elementType) {
            case ElementType.Fire:
                return "Feuer";
            case ElementType.Ice:
                return "Eis";
            case ElementType.Lightning:
                return "Blitz";
            default:
                return "Neutral";
        }
    }
}
```

## 5. Testsystem und Automatisierte Validierung

### 5.1 Erweiterte Testklassen für neue Mechaniken
```csharp
public class BattleFieldEffectTests {
    [Test]
    public void TimeStasisField_ReducesTimeTheftBy40Percent() {
        // Arrange
        TimeStasisField stasisField = new TimeStasisField();
        TimeTheftEventArgs args = new TimeTheftEventArgs {
            timeAmount = 5.0f,
            source = TheftSource.Enemy
        };
        
        // Feld aktivieren
        stasisField.OnBattleStart();
        
        // Act
        stasisField.ModifyTimeTheft(args);
        
        // Assert
        // 5.0 * (1 - 0.4) = 3.0
        Assert.AreEqual(3.0f, args.timeAmount, 0.001f);
    }
    
    [Test]
    public void ChronoResonanceField_GrantsTimeRefundOnResonance() {
        // Arrange
        ChronoResonanceField resonanceField = new ChronoResonanceField();
        TimeManager timeManager = new TimeManager();
        Card card1 = new Card { TimeCost = 2.0f };
        Card card2 = new Card { TimeCost = 3.0f };
        
        // Resonanzfeld aktivieren
        resonanceField.OnBattleStart();
        
        // Act
        // Erste Karte spielen
        resonanceField.HandleCardPlayed(card1, CardPlayer.Player);
        
        // Zweite Karte spielen (sollte Resonanz auslösen)
        resonanceField.HandleCardPlayed(card2, CardPlayer.Player);
        
        // Dritte Karte mit aktivierter Resonanz
        float initialTime = timeManager.CurrentTime;
        resonanceField.HandleCardPlayed(card1, CardPlayer.Player);
        float finalTime = timeManager.CurrentTime;
        
        // Assert
        // Zeitrückerstattung sollte sein: (2.0 * 0.5) + 0.5 = 1.5
        float expectedRefund = 1.5f;
        Assert.AreEqual(expectedRefund, finalTime - initialTime, 0.001f);
    }
    
    [Test]
    public void DoTCategorySystem_CorrectlyCategorizesDamageValues() {
        // Arrange & Act
        DoTEffect minorDoT = new DoTEffect(1.0f, 3.0f);
        DoTEffect mediumDoT = new DoTEffect(2.5f, 3.0f);
        DoTEffect majorDoT = new DoTEffect(4.0f, 3.0f);
        
        // Assert
        Assert.AreEqual(DoTEffect.DoTCategory.Minor, minorDoT.Category);
        Assert.AreEqual(DoTEffect.DoTCategory.Medium, mediumDoT.Category);
        Assert.AreEqual(DoTEffect.DoTCategory.Major, majorDoT.Category);
        
        // Zeitrückerstattung
        Assert.AreEqual(0.5f, minorDoT.GetTimeRefund(), 0.001f);
        Assert.AreEqual(1.0f, mediumDoT.GetTimeRefund(), 0.001f);
        Assert.AreEqual(2.0f, majorDoT.GetTimeRefund(), 0.001f);
    }
    
    [Test]
    public void ChainLightningEffect_ReducedDamageTransfer() {
        // Arrange
        ChainLightningEffect chainEffect = new ChainLightningEffect();
        float baseDamage = 10.0f;
        
        // Act
        float firstJumpDamage = baseDamage * chainEffect.damageTransferPercent;
        float secondJumpDamage = firstJumpDamage * chainEffect.damageTransferPercent;
        
        // Assert
        // 10.0 * 0.7 = 7.0
        Assert.AreEqual(7.0f, firstJumpDamage, 0.001f);
        // 7.0 * 0.7 = 4.9
        Assert.AreEqual(4.9f, secondJumpDamage, 0.001f);
    }
}
```

### 5.2 Automatisierte Balancing-Tests
```csharp
public class BalancingTests {
    [Test]
    public void DoTCategorySystem_MaxTimeRefundWithinLimits() {
        // Arrange
        TimeBurningField burningField = new TimeBurningField();
        burningField.OnBattleStart();
        
        // Create various DoT effects
        List<DoTEffect> effects = new List<DoTEffect> {
            new DoTEffect(1.0f, 3.0f),  // Minor: 0.5s
            new DoTEffect(1.0f, 3.0f),  // Minor: 0.5s
            new DoTEffect(2.5f, 3.0f),  // Medium: 1.0s
            new DoTEffect(2.5f, 3.0f),  // Medium: 1.0s
            new DoTEffect(4.0f, 3.0f),  // Major: 2.0s
            new DoTEffect(4.0f, 3.0f),  // Major: 2.0s
            new DoTEffect(5.0f, 3.0f)   // Major: 2.0s (beyond limit)
        };
        
        // Act
        float totalTimeRefunded = 0f;
        foreach (var effect in effects) {
            burningField.HandleDoTApplication(effect, DamageSource.Player, null);
            totalTimeRefunded = burningField.GetCurrentTimeRefunded();
        }
        
        // Assert
        // Maximum should be capped at 6.0s (10% of 60s battle)
        Assert.LessOrEqual(totalTimeRefunded, 6.0f);
    }
    
    [Test]
    public void TimeStasis_BalancedTheftReduction() {
        // Arrange
        TimeStasisField stasisField = new TimeStasisField();
        stasisField.OnBattleStart();
        
        // Different theft amounts
        float[] theftAmounts = { 1.0f, 2.0f, 3.0f, 4.0f, 5.0f };
        float[] expectedReductions = { 0.6f, 1.2f, 1.8f, 2.4f, 3.0f };
        
        // Act & Assert
        for (int i = 0; i < theftAmounts.Length; i++) {
            TimeTheftEventArgs args = new TimeTheftEventArgs {
                timeAmount = theftAmounts[i],
                source = TheftSource.Enemy
            };
            
            stasisField.ModifyTimeTheft(args);
            
            Assert.AreEqual(expectedReductions[i], args.timeAmount, 0.001f);
        }
    }
    
    [Test]
    public void ChronoResonance_StandardizedTimeGain() {
        // Arrange
        ChronoResonanceField resonanceField = new ChronoResonanceField();
        resonanceField.OnBattleStart();
        
        // Test various card costs
        Dictionary<float, float> costToExpectedGain = new Dictionary<float, float> {
            { 1.0f, 1.0f },  // (1.0 * 0.5) + 0.5 = 1.0
            { 2.0f, 1.5f },  // (2.0 * 0.5) + 0.5 = 1.5
            { 3.0f, 2.0f },  // (3.0 * 0.5) + 0.5 = 2.0
            { 4.0f, 2.5f }   // (4.0 * 0.5) + 0.5 = 2.5
        };
        
        // Act & Assert
        foreach (var pair in costToExpectedGain) {
            float cardCost = pair.Key;
            float expectedGain = pair.Value;
            
            // Simulate two cards to activate resonance
            Card card1 = new Card { TimeCost = 1.0f };
            Card card2 = new Card { TimeCost = 1.0f };
            Card testCard = new Card { TimeCost = cardCost };
            
            // Reset field
            resonanceField.OnBattleEnd();
            resonanceField.OnBattleStart();
            
            // Trigger resonance
            resonanceField.HandleCardPlayed(card1, CardPlayer.Player);
            resonanceField.HandleCardPlayed(card2, CardPlayer.Player);
            
            // Test time gain with mock TimeManager
            MockTimeManager mockTimeManager = new MockTimeManager();
            TimeManager.Instance = mockTimeManager;
            
            // Play test card with active resonance
            resonanceField.HandleCardPlayed(testCard, CardPlayer.Player);
            
            // Check time refund
            Assert.AreEqual(expectedGain, mockTimeManager.LastRefundAmount, 0.001f);
        }
    }
}

// Mock-TimeManager für Tests
public class MockTimeManager : TimeManager {
    public float LastRefundAmount { get; private set; }
    
    public override void RefundTime(float amount) {
        LastRefundAmount = amount;
    }
}
```

## 6. Klassendiagramme der Hauptsysteme

### 6.1 Verbesserte DoT-Kategorie-System-Klassendiagramm
```
DoTSystem
 ├── DoTEffect (Karten-Effekt)
 │    ├── Properties
 │    │   ├── DamagePerTick: float
 │    │   ├── Duration: float
 │    │   ├── Category: DoTCategory (Minor/Medium/Major)
 │    │   └── TimeRefund: float (0.5/1.0/2.0)
 │    └── Methods
 │        ├── Apply(target): void
 │        ├── GetTimeRefund(): float
 │        └── UpdateCategory(): void
 ├── DoTManager (Gegner-Komponente)
 │    ├── Properties
 │    │   ├── ActiveEffects: List<DoTEffect>
 │    │   └── TotalTimeRefunded: float
 │    └── Methods
 │        ├── AddDoTEffect(effect): void
 │        ├── ProcessDoTTicks(): void
 │        └── GetTimeRefund(category): float
 ├── TimeBurningField (Welt 2 Feldeffekt)
 │    ├── Properties
 │    │   ├── MaxTimeRefundPerBattle: float (6.0f)
 │    │   └── CurrentTimeRefunded: float
 │    └── Methods
 │        ├── HandleDoTApplication(effect, source, target): void
 │        └── GetTimeRefundForCategory(category): float
 └── DoTVisualizationManager (UI-Komponente)
      ├── Properties
      │   ├── DoTColors: Dictionary<DoTCategory, Color>
      │   └── DoTIcons: Dictionary<DoTCategory, Sprite>
      └── Methods
          ├── ShowDoTIndicator(target, category): void
          └── ShowTimeRefund(amount, category): void
```

### 6.2 Kampffeld-Effekt-System-Klassendiagramm
```
BattleFieldSystem
 ├── BattleFieldEffect (Abstrakte Basisklasse)
 │    ├── Properties
 │    │   ├── EffectType: FieldEffectType
 │    │   └── IsActive: bool
 │    └── Methods
 │        ├── OnBattleStart(): void
 │        ├── OnTurnStart(): void
 │        ├── OnCardPlayed(card, player): void
 │        ├── OnDoTApplied(effect, source, target): void
 │        └── OnBattleEnd(): void
 ├── BattleFieldEffectFactory (Factory)
 │    └── Methods
 │        └── CreateFieldEffect(worldType): BattleFieldEffect
 ├── TimeStasisField (Welt 3)
 │    ├── Properties
 │    │   └── timeTheftReductionPercent: float (0.4f)
 │    └── Methods
 │        └── ModifyTimeTheft(args): void
 ├── ChronoResonanceField (Welt 4)
 │    ├── Properties
 │    │   ├── cardsRequiredForResonance: int (2)
 │    │   ├── costReductionPercent: float (0.5f)
 │    │   ├── timeRefundAmount: float (0.5f)
 │    │   ├── cardPlayCounter: int
 │    │   └── resonanceActive: bool
 │    └── Methods
 │        └── HandleCardPlayed(card, player): void
 ├── ElementalSymbiosisField (Welt 5)
 │    ├── Properties
 │    │   ├── elementalBoostPercent: float (0.3f)
 │    │   └── lastPlayedElement: ElementType
 │    └── Methods
 │        ├── HandleCardPlayed(card, player): void
 │        ├── GetCardElement(card): ElementType
 │        └── BoostCardEffects(card, percent): void
 ├── BattleFieldManager (Singleton)
 │    ├── Properties
 │    │   └── CurrentFieldEffect: BattleFieldEffect
 │    └── Methods
 │        ├── SetFieldEffectForWorld(worldType): void
 │        └── OnBattleEnd(): void
 └── BattleFieldEffectUI (UI-Komponente)
      ├── Properties
      │   ├── fieldNameText: Text
      │   ├── fieldDescriptionText: Text
      │   └── fieldStatusText: Text
      └── Methods
          ├── UpdateFieldEffectDisplay(effect): void
          └── UpdateDoTCategoryDisplay(category): void
```

### 6.3 Ketteneffekt-System-Klassendiagramm
```
ChainSystem
 ├── ChainLightningEffect (Karten-Effekt)
 │    ├── Properties
 │    │   ├── chainRange: float (4.0f)
 │    │   ├── damageTransferPercent: float (0.7f)
 │    │   └── maxChains: int
 │    └── Methods
 │        ├── ApplyChainDamage(source, targets, baseDamage): void
 │        ├── FindNextTarget(source, potentialTargets, hitTargets): GameObject
 │        └── CalculateChainDamage(baseDamage, jumps): float
 ├── ChainVisualManager (UI-Komponente)
 │    ├── Properties
 │    │   ├── chainEffectPool: ObjectPool<LineRenderer>
 │    │   └── chainMaterial: Material
 │    └── Methods
 │        ├── CreateChainEffect(start, end): LineRenderer
 │        └── ReleaseChainEffect(effect): void
 └── ChainLightningCard (Kettenblitz-Karte)
      ├── Properties
      │   ├── BaseDamage: float
      │   └── ChainEffect: ChainLightningEffect
      └── Methods
          └── OnPlay(target): void
```

## Quellendokumente
- ZK-TECH-COMP-v1.0-20250325: Original technischer Design-Leitfaden
- ZK-TIME-v1.1-20250327: Aktualisiertes Zeitsystem
- ZK-BAL-v1.1-20250327: Aktualisiertes Balancing-Framework

## Abhängige Dokumente
- ZK-WORLD-v1.0-20250327: Weltensystem für Akt 1
- ZK-DUN-MECH-v1.0-20250327: Kampffeld-Effekt-Implementierungen
- ZK-CLASS-MAGE-CARDS-v1.1-20250327: Aktualisierte Chronomanten-Karten
- ZK-CLASS-WAR-CARDS-v1.1-20250327: Aktualisierte Zeitwächter-Karten
- ZK-CLASS-ROG-CARDS-v1.1-20250327: Aktualisierte Schattenschreiter-Karten