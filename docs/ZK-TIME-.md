# Zeitsystem (ZK-TIME-v1.1-20250327)

## Änderungshistorie
- v1.0 (2025-03-25): Initiale Version
- v1.1 (2025-03-27): Integration des DoT-Kategoriesystems, Anpassung der Zeitrückgewinn- und Zeitdiebstahl-Mechaniken

## Zusammenfassung
Zeit ist die einzige Ressource im Spielsystem. Jeder Kampf hat ein Zeitlimit (60s); Karten verbrauchen Zeit; Zeitmanipulation bildet die strategische Kernmechanik. DoT-Effekte werden in Kategorien mit festen Zeitrückgewinnwerten eingeteilt.

## 1. Zeitmechanik-Grundgerüst

### 1.1 Echtzeit-Kampfsystem
- Zeitlimit: 60s/Kampf → bei Ablauf: Niederlage
- Zeit = einzige Ressource (kein LP-System)
- Timer-Visualisierung: >30s (blau) → 15-30s (gelb) → <15s (rot, pulsierend)

### 1.2 Kartenverbrauch
- Jede Karte: Spezifische Zeitkosten
- Stärkere Effekte = höhere Kosten
- Effizienz-Metrik: Effektwert/Zeitkosten

## 2. Zeitmanipulationsmechaniken

### 2.1 Zeitverbrauch
- Standard: Kartenkosten werden vom Haupttimer abgezogen
- Balanceformel: Effizienz = Effektwert/Zeitkosten

### 2.2 Zeitrückgewinnung
- Aktiv: Spezielle Karten (z.B. "Temporale Riftrückgewinnung")
- Passiv: Bei Ereignissen (Gegner besiegen) 
- Zeitbonus: Gegner <20s besiegt = +2s
- Limit: Nie mehr als ursprüngliche Kartenkosten

### 2.3 Zeitdiebstahl
- Gegner können Zeit stehlen (spezielle Aktionen)
- Prävention: Verzögerungskarten
- Kritikalität steigt bei niedriger Restzeit
- Maximal 15% der Gesamtzeit (9s) können pro Kampf gestohlen werden

### 2.4 Zeitmanipulation
- Kartenbeschleunigung: Reduziert Kosten nachfolgender Karten
- Gegnerverlangsamung: Erhöht Intervalle zwischen Gegneraktionen
- Kumulative Effekte: Stapelbar (max. 80-90% Verlangsamung)

## 3. DoT-Kategoriesystem

### 3.1 Kategorisierung von DoT-Effekten
| Kategorie | Schadenswert/Tick | Zeitgewinn | Visuelle Darstellung | Farbkodierung |
|-----------|------------------|------------|----------------------|---------------|
| Schwach | 1 | 0,5s | Ein Punkt (●) | Hellgelb/Gold |
| Mittel | 2-3 | 1,0s | Zwei Punkte (●●) | Orange |
| Stark | 4+ | 2,0s | Drei Punkte (●●●) | Dunkelorange/Rot |

### 3.2 DoT-Zeitgewinn-Mechanik
- Zeitgewinn erfolgt sofort bei DoT-Anwendung (nicht pro Tick)
- Maximal 10% der Kampfzeit (6s) an DoT-Zeitgewinn pro Kampf
- Klare UI-Visualisierung mit Kategorie-Icons und DoT-Stärke-Anzeige

### 3.3 Weltspezifische DoT-Interaktion
- Welt 2 (Feuer): Zeitverbrennung-Mechanik verstärkt DoT-Zeitgewinne
- DoT-Verstärkungseffekte können Kategoriestufe anheben

## 4. Balance-Richtlinien

### 4.1 Zeitwert-Kurve
- Nicht-lineare Wertsteigerung bei abnehmender Gesamtzeit
- Letzte 10s wertvoller als erste 10s
- Zeitgewinn bei niedrigen Restzeiten limitieren

### 4.2 Empfohlene Zeitkosten nach Kartentyp
| Kartentyp | Zeitkosten | Effizienz | 
|-----------|------------|-----------|
| Basis-Schaden | 1-1.5s | Hoch |
| Mittlerer Schaden | 2-3s | Ausgeglichen |
| Hocheffekt | 3-5s | Niedrig |
| Zeitmanipulation | 2-3s | Kontextabhängig |
| Signaturkarten | 4-6s | Spielwendend |

### 4.3 Kritische Parameter
- Zeitdiebstahl-Maximum: 15% der Gesamtkampfzeit (9s bei 60s)
- Zeitrückgewinnung-Maximum: 30% der Gesamtkampfzeit (18s bei 60s)
- DoT-Zeitgewinn-Maximum: 10% der Gesamtkampfzeit (6s bei 60s)

## 5. Kampffeld-Effekt Anpassungen

### 5.1 Zeitstasis (Welt 3: Eiszeit-Festung)
- Zeitdiebstahlreduktion: 40% (angepasst von 50%)
- Visualisierung: Schimmernde Barriere um Timer
- Gilt für alle Zeitdiebstahl-Effekte

### 5.2 Chronoresonanz (Welt 4: Gewittersphäre)
- Aktivierung: Nach 2 gespielten Karten (reduziert von 3)
- Effekt: 50% Kostenreduktion für nächste Karte
- Neuer Zusatzeffekt: +0,5s Zeitgewinn bei Aktivierung

### 5.3 Zeitverbrennung (Welt 2: Flammen-Chrono-Schmiede)
- Sofortiger Zeitgewinn gemäß DoT-Kategoriesystem
- Visuelle Statusanzeige für gewonnene/maximale Zeit
- Zeitgewinn nur bei Spieler-erzeugten DoT-Effekten

## 6. Klassenspezifische Zeitinteraktionen

### 6.1 Chronomant (Magier)
- Primärer Zeitmanipulator
- Effiziente Zeitnutzung
- Signatur: "Chronofluktuation" (Zeitrückgewinn)
- Blitz-Evolution: Ketteneffekte auf 70% Schadensübertragung reduziert (vorher 80%)

### 6.2 Zeitwächter (Krieger)
- Zeitverteidigung/Präventions-Fokus
- Passive Zeitrückgewinnung durch Verteidigung
- Kombos für Zeitkostenreduktion
- Temporale Aegis: +0,5s nach jedem erfolgreichen Block

### 6.3 Schattenschreiter (Schurke)
- Extrem günstige Karten mit Ketteneffekten
- Zeitdiebstahl gegen Gegner
- Hoher Kartendurchsatz
- 0-Kosten-Ketten nach Schattenkarten

## Abhängigkeiten
- ZK-MECH-v1.0-20250325: Nutzt als Grundlage
- ZK-CLASS-*-v1.0-20250325: Implementiert klassen-spezifische Zeitfähigkeiten
- ZK-DUN-MECH-v1.0-20250327: Kampffeld-Effekte für Welten 1-5