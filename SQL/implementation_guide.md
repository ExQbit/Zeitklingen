# Anleitung zur Implementierung der Spielerdaten in Zeitklingen

Diese Anleitung beschreibt, wie Sie die Spielerdatentabellen und -funktionen in Ihrem Zeitklingen-Spiel implementieren können.

## 1. Übersicht über die erstellten Tabellen

Die folgenden Tabellen wurden für die Spielerdaten definiert:

1. **player_data**: Grundlegende Spielerinformationen und Statistiken
2. **player_cards**: Karten im Besitz eines Spielers
3. **player_materials**: Materialien im Besitz eines Spielers
4. **player_decks**: Gespeicherte Kartendecks der Spieler
5. **player_achievements**: Erzielte Achievements und Fortschritte

## 2. Einrichtung der Datenbank

### Schritt 1: SQL-Tabellen erstellen

Führen Sie die SQL-Befehle aus der Datei `player_tables_setup.sql` in Ihrer Supabase-Instanz aus. Dies kann über das SQL-Editor-Tool in der Supabase-Weboberfläche erfolgen.

### Schritt 2: API-Funktionen hinzufügen

Führen Sie die SQL-Befehle aus der Datei `player_api_functions.sql` aus, um die Datenbankfunktionen zu erstellen, die für den Zugriff auf die Spielerdaten verwendet werden.

### Schritt 3: Testdaten einfügen

Wenn Sie möchten, können Sie Testdaten mit den Befehlen aus der Datei `player_data_populate.sql` einfügen.

## 3. Integration in die Spiellogik

### Spieler-Management

```csharp
// Beispiel für die Integration in C# (Unity)
using System;
using System.Threading.Tasks;
using Supabase;

public class PlayerManager
{
    private Client _supabaseClient;
    private string _currentPlayerId;
    
    public PlayerManager(Client supabaseClient, string playerId)
    {
        _supabaseClient = supabaseClient;
        _currentPlayerId = playerId;
    }
    
    // Spielerdaten abrufen
    public async Task<PlayerData> GetPlayerData()
    {
        var response = await _supabaseClient.Rpc("get_player_data", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId }
        });
        
        return response.Data.FirstOrDefault();
    }
    
    // Spieler erstellen oder aktualisieren
    public async Task<string> UpsertPlayer(string username, string preferredClass = null)
    {
        var response = await _supabaseClient.Rpc("upsert_player", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId },
            { "p_username", username },
            { "p_preferred_class", preferredClass }
        });
        
        return response.Data;
    }
    
    // Erfahrung hinzufügen und ggf. Level-Up verarbeiten
    public async Task<(int newLevel, bool levelUp, int totalExperience)> AddExperience(int experienceGained)
    {
        var response = await _supabaseClient.Rpc("update_player_level", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId },
            { "p_experience_gained", experienceGained }
        });
        
        var result = response.Data.FirstOrDefault();
        return (
            result.GetProperty("new_level").GetInt32(),
            result.GetProperty("level_up").GetBoolean(),
            result.GetProperty("total_experience").GetInt32()
        );
    }
}
```

### Karten-Management

```csharp
// Beispiel für die Integration in C# (Unity)
public class CardManager
{
    private Client _supabaseClient;
    private string _currentPlayerId;
    
    public CardManager(Client supabaseClient, string playerId)
    {
        _supabaseClient = supabaseClient;
        _currentPlayerId = playerId;
    }
    
    // Alle Karten des Spielers abrufen
    public async Task<List<PlayerCard>> GetPlayerCards()
    {
        var response = await _supabaseClient.Rpc("get_player_cards", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId }
        });
        
        return response.Data;
    }
    
    // Karte zum Inventar hinzufügen oder entfernen
    public async Task<bool> UpdatePlayerCard(string cardId, int quantityChange, bool? isFavorite = null)
    {
        var response = await _supabaseClient.Rpc("update_player_card", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId },
            { "p_card_id", cardId },
            { "p_quantity_change", quantityChange },
            { "p_is_favorite", isFavorite }
        });
        
        return response.Data;
    }
    
    // Karte als Favorit markieren
    public async Task<bool> SetCardAsFavorite(string cardId, bool isFavorite)
    {
        return await UpdatePlayerCard(cardId, 0, isFavorite);
    }
}
```

### Material-Management

```csharp
// Beispiel für die Integration in C# (Unity)
public class MaterialManager
{
    private Client _supabaseClient;
    private string _currentPlayerId;
    
    public MaterialManager(Client supabaseClient, string playerId)
    {
        _supabaseClient = supabaseClient;
        _currentPlayerId = playerId;
    }
    
    // Alle Materialien des Spielers abrufen
    public async Task<List<PlayerMaterial>> GetPlayerMaterials()
    {
        var response = await _supabaseClient.Rpc("get_player_materials", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId }
        });
        
        return response.Data;
    }
    
    // Material zum Inventar hinzufügen oder entfernen
    public async Task<bool> UpdatePlayerMaterial(string materialType, int quantityChange)
    {
        var response = await _supabaseClient.Rpc("update_player_material", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId },
            { "p_material_type", materialType },
            { "p_quantity_change", quantityChange }
        });
        
        return response.Data;
    }
}
```

### Deck-Management

```csharp
// Beispiel für die Integration in C# (Unity)
public class DeckManager
{
    private Client _supabaseClient;
    private string _currentPlayerId;
    
    public DeckManager(Client supabaseClient, string playerId)
    {
        _supabaseClient = supabaseClient;
        _currentPlayerId = playerId;
    }
    
    // Alle Decks des Spielers abrufen
    public async Task<List<PlayerDeck>> GetPlayerDecks()
    {
        var response = await _supabaseClient.Rpc("get_player_decks", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId }
        });
        
        return response.Data;
    }
    
    // Neues Deck erstellen
    public async Task<string> CreateDeck(string deckName, string deckClass, List<string> cardIds, bool isActive = false)
    {
        var response = await _supabaseClient.Rpc("create_player_deck", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId },
            { "p_deck_name", deckName },
            { "p_deck_class", deckClass },
            { "p_cards", cardIds.ToArray() },
            { "p_is_active", isActive }
        });
        
        return response.Data;
    }
    
    // Deck aktualisieren
    public async Task<bool> UpdateDeck(string deckId, string deckName = null, List<string> cardIds = null, bool? isActive = null)
    {
        var parameters = new Dictionary<string, object>
        {
            { "p_deck_id", deckId }
        };
        
        if (deckName != null) parameters.Add("p_deck_name", deckName);
        if (cardIds != null) parameters.Add("p_cards", cardIds.ToArray());
        if (isActive.HasValue) parameters.Add("p_is_active", isActive.Value);
        
        var response = await _supabaseClient.Rpc("update_player_deck", parameters);
        
        return response.Data;
    }
    
    // Deck löschen
    public async Task<bool> DeleteDeck(string deckId)
    {
        var response = await _supabaseClient.Rpc("delete_player_deck", new Dictionary<string, object>
        {
            { "p_deck_id", deckId }
        });
        
        return response.Data;
    }
}
```

### Achievement-Management

```csharp
// Beispiel für die Integration in C# (Unity)
public class AchievementManager
{
    private Client _supabaseClient;
    private string _currentPlayerId;
    
    public AchievementManager(Client supabaseClient, string playerId)
    {
        _supabaseClient = supabaseClient;
        _currentPlayerId = playerId;
    }
    
    // Alle Achievements des Spielers abrufen
    public async Task<List<PlayerAchievement>> GetPlayerAchievements()
    {
        var response = await _supabaseClient.Rpc("get_player_achievements", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId }
        });
        
        return response.Data;
    }
    
    // Achievement-Fortschritt aktualisieren
    public async Task<bool> UpdateAchievementProgress(string achievementName, int progress, bool? completed = null)
    {
        var response = await _supabaseClient.Rpc("update_achievement_progress", new Dictionary<string, object>
        {
            { "p_player_id", _currentPlayerId },
            { "p_achievement_name", achievementName },
            { "p_progress", progress },
            { "p_completed", completed }
        });
        
        return response.Data;
    }
}
```

## 4. Autorisierung und Sicherheit

Die erstellten Tabellen verwenden Row-Level Security (RLS), um sicherzustellen, dass Spieler nur auf ihre eigenen Daten zugreifen können. Die Service-Rolle hat vollen Zugriff auf alle Daten.

Für die Authentifizierung sollten Sie die von Supabase bereitgestellten Authentifizierungsdienste verwenden und sicherstellen, dass die `player_id` in Ihren Tabellen mit der Benutzer-ID von Supabase übereinstimmt.

## 5. Nächste Schritte

Nach der Implementierung der Spielerdaten könnten folgende Funktionen als Nächstes implementiert werden:

1. **Welt-Daten**: Implementieren Sie die Welt-Tabelle, um verschiedene Spielbereiche mit unterschiedlichen Schwierigkeitsgraden zu definieren.
2. **Spielsitzungen**: Erfassen Sie Informationen über Spielsitzungen, um Spielerstatistiken zu verfolgen und zu analysieren.
3. **Ranglisten**: Erstellen Sie eine Ranglisten-Tabelle, um Spieler basierend auf ihrer Leistung zu vergleichen.

## 6. Fehlerbehandlung und Logging

Es ist ratsam, ein Logging-System zu implementieren, um Datenbankoperationen zu überwachen und Fehler zu diagnostizieren. Stellen Sie sicher, dass Ihre Anwendung robust mit Fehlern umgeht, insbesondere bei Netzwerkproblemen oder Datenbankfehlern.

```csharp
try
{
    // Datenbankoperation durchführen
    var result = await _supabaseClient.Rpc("update_player_card", parameters);
    return result.Data;
}
catch (PostgresException ex)
{
    Debug.LogError($"Datenbank-Fehler: {ex.Message}");
    // Fehlerbehandlung
    return false;
}
catch (Exception ex)
{
    Debug.LogError($"Allgemeiner Fehler: {ex.Message}");
    // Fehlerbehandlung
    return false;
}
```

## 7. Leistungsoptimierung

Für bessere Leistung sollten Sie berücksichtigen:

1. Daten im Client cachen, wo angemessen
2. Batch-Operationen für mehrere Änderungen verwenden
3. Indizes für häufig abgefragte Felder erstellen

## 8. Datenzugriffsmuster

Es empfiehlt sich, ein Repository-Pattern für den Datenzugriff zu implementieren:

```csharp
// Game-Manager-Klasse, die alle Datenmanager koordiniert
public class GameDataManager
{
    public PlayerManager PlayerManager { get; private set; }
    public CardManager CardManager { get; private set; }
    public MaterialManager MaterialManager { get; private set; }
    public DeckManager DeckManager { get; private set; }
    public AchievementManager AchievementManager { get; private set; }
    
    private Client _supabaseClient;
    private string _currentPlayerId;
    
    public GameDataManager(Client supabaseClient, string playerId)
    {
        _supabaseClient = supabaseClient;
        _currentPlayerId = playerId;
        
        // Manager initialisieren
        PlayerManager = new PlayerManager(_supabaseClient, _currentPlayerId);
        CardManager = new CardManager(_supabaseClient, _currentPlayerId);
        MaterialManager = new MaterialManager(_supabaseClient, _currentPlayerId);
        DeckManager = new DeckManager(_supabaseClient, _currentPlayerId);
        AchievementManager = new AchievementManager(_supabaseClient, _currentPlayerId);
    }
    
    // Spiel speichern - aktualisiert alle wichtigen Spielerdaten
    public async Task SaveGame()
    {
        // Implementation des Spielstands-Speicherns
        // z.B. Aktualisieren von Spielerstatistiken, Status, etc.
    }
}
```

Durch diese Strukturierung wird Ihr Code modularer und leichter zu warten.
