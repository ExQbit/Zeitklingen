# ZK-WIKI - Zeitklingen Wiki

- [1. Einführung](#1-einführung)
  - [1.1 Spielkonzept](#11-spielkonzept)
  - [1.2 Schlüsselmechaniken](#12-schlüsselmechaniken)
  - [1.3 Versionshistorie](#13-versionshistorie)
- [2. Grundsysteme](#2-grundsysteme)
  - [2.1 Zeitsystem](#21-zeitsystem)
  - [2.2 DoT-Kategoriesystem](#22-dot-kategoriesystem)
  - [2.3 Materialsystem](#23-materialsystem)
  - [2.4 Evolutionssystem](#24-evolutionssystem)
- [3. Klassen](#3-klassen)
  - [3.1 Chronomant](#31-chronomant)
  - [3.2 Zeitwächter](#32-zeitwächter)
  - [3.3 Schattenschreiter](#33-schattenschreiter)
- [4. Welten und Kampffeld-Effekte](#4-welten-und-kampffeld-effekte)
  - [4.1 Welt 1: Zeitwirbel-Tal](#41-welt-1-zeitwirbel-tal)
  - [4.2 Welt 2: Flammen-Schmiede](#42-welt-2-flammen-schmiede)
  - [4.3 Welt 3: Eiszeit-Festung](#43-welt-3-eiszeit-festung)
  - [4.4 Welt 4: Gewittersphäre](#44-welt-4-gewittersphäre)
  - [4.5 Welt 5: Chronos-Nexus](#45-welt-5-chronos-nexus)
- [5. Tutorial und Progression](#5-tutorial-und-progression)
  - [5.1 Tutorial-Dungeon: Der Zerrissene Zeitstrom](#51-tutorial-dungeon-der-zerrissene-zeitstrom)
  - [5.2 70/30-Materialverteilungssystem](#52-7030-materialverteilungssystem)
  - [5.3 Schwierigkeitsstufen](#53-schwierigkeitsstufen)
- [6. Kartenreferenz](#6-kartenreferenz)
  - [6.1 Chronomant-Karten](#61-chronomant-karten)
  - [6.2 Zeitwächter-Karten](#62-zeitwächter-karten)
  - [6.3 Schattenschreiter-Karten](#63-schattenschreiter-karten)
- [7. Gameplay-Strategien](#7-gameplay-strategien)
  - [7.1 Chronomant-Strategien](#71-chronomant-strategien)
  - [7.2 Zeitwächter-Strategien](#72-zeitwächter-strategien)
  - [7.3 Schattenschreiter-Strategien](#73-schattenschreiter-strategien)

---

## 1. Einführung

### 1.1 Spielkonzept

Zeitklingen ist ein innovatives zeit-basiertes Kartenspiel mit strategischer Tiefe. In dieser einzigartigen Spielwelt ist Zeit die einzige Ressource. Kämpfe finden innerhalb eines 60-Sekunden-Zeitlimits statt, und jede gespielte Karte verbraucht Zeit. Anstatt neue Karten zu sammeln, entwickeln Spieler ihr bestehendes Deck durch ein deterministisches Evolutionssystem, das Karten in drei elementare Pfade verzweigen lässt.

Das Spiel zeichnet sich durch minimalen Zufall und maximale strategische Kontrolle aus, was es zu einem taktisch anspruchsvollen Erlebnis macht. Bei Zeitklingen liegt der Fokus auf wohlüberlegtem Kartenspiel, effizienter Zeitnutzung und strategischer Kartenentwicklung.

### 1.2 Schlüsselmechaniken

- **Zeit als einzige Ressource**: 60-Sekunden-Timer statt traditioneller Ressourcen
- **Evolution statt Sammlung**: Kartenentwicklung statt Neuakquisition
- **Deterministische Mechaniken**: Minimaler Zufall für maximale Strategie
- **DoT-Kategoriesystem**: Standardisierte Damage-over-Time-Effekte mit festen Zeitgewinnen
- **Elementare Evolutionspfade**: Jede Karte kann über Feuer-, Eis- oder Blitzpfade entwickelt werden
- **Weltspezifische Kampffeld-Effekte**: Jede Welt bietet einzigartige Mechaniken
- **70/30-Materialverteilung**: Strategisches Ressourcensystem für gezielte Evolution

### 1.3 Versionshistorie

| Version | Datum | Wichtige Änderungen |
|---------|-------|---------------------|
| v1.0 | 25.03.2025 | Initiale Dokumentation des Spielkonzepts |
| v1.1 | 27.03.2025 | Integration des DoT-Kategoriesystems, Zeitstasis-Anpassung (40%), Chronoresonanz-Update (+0,5s Zeitgewinn), Blitz-Ketteneffektivität reduziert auf 70% |

---

## 2. Grundsysteme

### 2.1 Zeitsystem

Das Zeitsystem bildet den Kern des Spiels und definiert, wie Zeit als einzige Ressource funktioniert.

#### 2.1.1 Grundmechanik

- **Kampfzeit**: Jeder Kampf hat ein Standardzeitlimit von 60 Sekunden
- **Kartenkosten**: Jede Karte verbraucht Zeit beim Spielen (zwischen 0,5s und 6s)
- **Niederlage**: Bei Ablauf des Timers verliert der Spieler
- **Timer-Visualisierung**: 
  - >30s: Blau
  - 15-30s: Gelb
  - <15s: Rot, pulsierend

#### 2.1.2 Zeitmanipulationsmechaniken

| Mechanik | Beschreibung | Limitierung |
|----------|--------------|-------------|
| Zeitverbrauch | Kartenkosten werden vom Haupttimer abgezogen | - |
| Zeitrückgewinnung | Spezielle Karten oder Ereignisse geben Zeit zurück | Max. 30% der Gesamtkampfzeit (18s) |
| Zeitdiebstahl | Gegner können Zeit stehlen | Max. 15% der Gesamtkampfzeit (9s) |
| DoT-Zeitgewinn | Sofortiger Zeitgewinn basierend auf DoT-Kategorie | Max. 10% der Gesamtkampfzeit (6s) |

### 2.2 DoT-Kategoriesystem

Das DoT-Kategoriesystem standardisiert Damage-over-Time-Effekte in drei Stärkestufen mit festen Zeitgewinnwerten.

| Kategorie | Schadenswert/Tick | Zeitgewinn | Visualisierung | Farbkodierung |
|-----------|-------------------|------------|----------------|---------------|
| Schwach | 1 | 0,5s | Ein Punkt (●) | Hellgelb/Gold |
| Mittel | 2-3 | 1,0s | Zwei Punkte (●●) | Orange |
| Stark | 4+ | 2,0s | Drei Punkte (●●●) | Dunkelorange/Rot |

#### 2.2.1 DoT-Zeitgewinn-Mechanik

- Zeitgewinn erfolgt sofort bei DoT-Anwendung (nicht pro Tick)
- Maximal 10% der Kampfzeit (6s) an DoT-Zeitgewinn pro Kampf
- UI-Visualisierung mit Kategorie-Icons und farblicher Kodierung

#### 2.2.2 Weltspezifische DoT-Interaktion

- **Welt 2 (Feuer)**: Zeitverbrennung-Mechanik verstärkt DoT-Zeitgewinne
- **Welt 3 (Eis)**: Erhöhte DoT-Dauer (+25%), reduzierter Zeitgewinn (0,8×)
- **Welt 4 (Blitz)**: Kettenreaktion für DoTs möglich
- **Welt 5 (Gemischt)**: Kombinierte Elementar-DoTs (1,5× Effektivität)

### 2.3 Materialsystem

Das Materialsystem definiert die Ressourcen, die für Kartenleveling und Evolution benötigt werden.

#### 2.3.1 Materialklassifikation

| Kategorie | Verwendung | Beispiele |
|-----------|------------|-----------|
| Zeitressourcen | Kartenleveling, Basis-Evolution | Zeitstaub, Zeitfragment, Zeitkristall |
| Elementarressourcen | Elementare Evolution | Funkenfragment (Feuer), Eissplitter (Eis), Funkenstaub (Blitz) |
| Qualitätsressourcen | Sockel, Edelsteine | Einfache Fassung, Ungeschliffener Edelstein |
| Spezialressourcen | Rezepte, Transformation | Mythische Materialien |

#### 2.3.2 Seltenheitsstufen

| Stufe | Farbe | Drop-Rate | Beschaffung |
|-------|-------|-----------|-------------|
| Gewöhnlich | Weiß | 50-70% | Sehr leicht |
| Ungewöhnlich | Grün | 20-30% | Leicht |
| Selten | Blau | 8-15% | Moderat |
| Episch | Lila | 2-5% | Schwer |
| Legendär | Orange | 0,5-1% | Sehr schwer |
| Mythisch | Türkis | <0,1% | Extrem schwer |

#### 2.3.3 Elementare Materialien

**Feuer-Materialien**
| Material | Seltenheit | Verwendung | DoT-Kategorie | Zeitgewinn |
|----------|------------|------------|---------------|------------|
| Funkenfragment | Gewöhnlich | Basis-Feuerevolution | Schwach | 0,5s |
| Feuerkern | Ungewöhnlich | Erste Feuer-Evolution | Mittel | 1,0s |
| Vulkanessenz | Selten | Zweite Feuer-Evolution | Mittel | 1,0s |
| Phönixfeder | Episch | Fortgeschrittene Feuer-Evolution | Stark | 2,0s |
| Reiner Feuerkern | Legendär | Höchste Feuer-Evolution | Stark | 2,0s |

**Eis-Materialien**
| Material | Seltenheit | Verwendung | Slow-Effektivität |
|----------|------------|------------|-------------------|
| Eissplitter | Gewöhnlich | Basis-Eisevolution | 10-15% |
| Eiskern | Ungewöhnlich | Erste Eis-Evolution | 20-25% |
| Gefrorene Träne | Selten | Zweite Eis-Evolution | 30-35% |
| Ewiges Eis | Episch | Fortgeschrittene Eis-Evolution | 40-45% |
| Reiner Eiskern | Legendär | Höchste Eis-Evolution | 50-60% |

**Blitz-Materialien**
| Material | Seltenheit | Verwendung | Ketteneffektivität |
|----------|------------|------------|---------------------|
| Funkenstaub | Gewöhnlich | Basis-Blitzevolution | 1 Ziel, 70% Übertragung |
| Blitzkern | Ungewöhnlich | Erste Blitz-Evolution | 1 Ziel, 70% Übertragung |
| Gewitteressenz | Selten | Zweite Blitz-Evolution | 2 Ziele, 70% Übertragung |
| Sturmkristall | Episch | Fortgeschrittene Blitz-Evolution | 2-3 Ziele, 70% Übertragung |
| Reiner Blitzkern | Legendär | Höchste Blitz-Evolution | Alle, 70% Übertragung |

### 2.4 Evolutionssystem

Das Evolutionssystem ermöglicht die gezielte Weiterentwicklung von Karten über elementare Pfade.

#### 2.4.1 Grundprinzipien

- Festes Deck (26 Karten) statt wachsender Kartensammlung
- Deterministische Progression ohne Zufallselemente
- Individuelle Kartenverbesserung statt Deck-Erweiterung
- Strategische Spezialisierung (nicht alle Karten maximal entwickelbar)

#### 2.4.2 Levelingsystem

| Level | XP | Materialien | Effektsteigerung |
|-------|------|------------|------------------|
| 1→2 | 100 | 3× Zeitstaub | +10% Grundwerte |
| 3→4 | 500 | 3× Zeitfragment | +15% Grundwerte |
| 5→6 | 2000 | 3× Zeitkristall | +20% Grundwerte |
| 7→8 | 8000 | 3× Zeitessenz | +25% Grundwerte |
| 9→10 | 25000 | 1× Zeitkern | +30% + Spezialeffekt |

#### 2.4.3 Elementare Pfade

| Element | Fokus | Spielstil | Effektivität |
|---------|-------|-----------|--------------|
| Feuer | Schaden, DoT | Offensiv | Einzelziel, kurze Kämpfe |
| Eis | Kontrolle, Slow | Defensiv | Langzeit, Sicherheit |
| Blitz | Effizienz, Ketten | Temporeich | Mehrfachziele, Rotation |

#### 2.4.4 Evolutionsstufen

- **Erste Evolution**: Level 2+, elementarer Grundeffekt, geringe Materialkosten
- **Zweite Evolution**: Level 5+, verbesserte Effekte, seltenere Materialien
- **Dritte Evolution**: Level 8+, maximale Effekte, legendäre Materialien

---

## 3. Klassen

### 3.1 Chronomant

Der Chronomant ist eine Magier-Klasse, die Zeitmanipulation mit arkaner Macht verbindet.

#### 3.1.1 Klassenidentität

- **Designphilosophie**: Zeitliche Dualität, strategische Tiefe, eskalierendes Machtwachstum
- **Spielstil**: Kontrolle, Ressourcenmanagement, Elementarfokus
- **Stärken**: Vielseitigkeit, hoher situativer Schaden, Zeitmanipulation
- **Schwächen**: Etwas höhere Komplexität, benötigt strategische Planung

#### 3.1.2 Deckzusammensetzung (26 Karten)

| Kategorie | Anzahl | Anteil | Zweck |
|-----------|--------|--------|-------|
| Basiszauber | 12 (8+4) | 46% | Primäre Schadensquelle |
| Zeitmanipulation | 10 (3+3+2+2) | 38% | Kontrolle, Effizienz |
| Signaturkarten | 4 (1+1+1+1) | 16% | Identitätsträger, Spezialeffekte |

#### 3.1.3 Klassenspezifische Mechaniken

- **Arkane Vorhersehung (Passiv)**: Zu Kampfbeginn: Ansehen und Neuanordnen der obersten 3 Karten
- **Zeitboni-System**: Gegner unter 20s besiegt: +2s Zeitbonus (bis zu 6s pro Kampf)

#### 3.1.4 Evolutionspfade

**Feuer-Pfad ("Chronopyromant")**
- Strategie: "Verbrennen statt Kontrollieren", hoher DoT
- Stärken: Maximaler Einzelzielschaden, Burst-Damage
- Beispiel: Arkaner Stoß → Funke (0,5s Zeitgewinn) → Feuerstoß (1,0s Zeitgewinn) → Feuerlanze (2,0s Zeitgewinn)

**Eis-Pfad ("Chronofrost")**
- Strategie: "Verlangsamen und Kontrollieren"
- Stärken: Kumulative Slow-Effekte (bis 80-90%), Sicherheit
- Beispiel: Arkaner Stoß → Frosthauch (3+15% Slow) → Eissplitter (5+25% Slow) → Frostexplosion (6+35% AoE Slow)

**Blitz-Pfad ("Blitzchronist")**
- Strategie: "Geschwindigkeit und Verkettung"
- Stärken: Ketteneffekte, Effizienz, Tempo, Multi-Target
- Beispiel: Arkaner Stoß → Statische Entladung → Kettenblitz → Blitzentladung
- Ketteneffektivität: 70% Schadensübertragung

#### 3.1.5 Weltaffinitäten

| Welt | Affinität | Feldeffekt-Interaktion | Restzeit-Durchschnitt |
|------|-----------|------------------------|----------------------|
| Zeitwirbel-Tal | Neutral | Zeitrisse für strategische Zeitgewinne | 12s |
| Flammen-Schmiede | Stark | Zeitverbrennung maximiert DoT-Nutzen | 15s |
| Eiszeit-Festung | Moderat | 40% Zeitstasis begrenzt Zeitdiebstahl-Anfälligkeit | 13s |
| Gewittersphäre | Stark | Chronoresonanz-Synergien | 18s |
| Chronos-Nexus | Stark | Elementsymbiose fördert Pfadwechsel | 16s |

### 3.2 Zeitwächter

Der Zeitwächter ist eine Krieger-Klasse, die defensive Stärke mit Zeitkontrolle verbindet.

#### 3.2.1 Klassenidentität

- **Designphilosophie**: Defensive Zeitkontrolle, reflektive Kriegsführung, methodische Eskalation
- **Spielstil**: Defensiv, zeitverteidigend, blockbasiert
- **Stärken**: Höchste Überlebensfähigkeit, Reflektion, Zeitverteidigung
- **Schwächen**: Geringerer Direktschaden, langsameres Tempo

#### 3.2.2 Deckzusammensetzung (26 Karten)

| Kategorie | Anzahl | Anteil | Zweck |
|-----------|--------|--------|-------|
| Basisangriffe | 12 (8+4) | 46% | Primäre Schadensquelle |
| Verteidigungskarten | 6 (4+1+1) | 23% | Defensive, Zeitschutz |
| Zeitmanipulation | 4 (2+2) | 15% | Kontrolle, Effizienz |
| Signaturkarten | 4 (1+1+1+1) | 16% | Identitätsträger, Spezialisierung |

#### 3.2.3 Klassenspezifische Mechaniken

- **Temporale Aegis (Passiv)**: Nach jedem erfolgreichen Block: +0,5s Zeitrückgewinn
- **Zeitlicher Wächter**: Phasenbasierte Schutz- und Boostmechanik
- **Schild-Schwert-Zyklus**: Verteidigung→Angriff: +20% Schaden, Angriff→Verteidigung: +1,0s Zeitrückgewinn

#### 3.2.4 Evolutionspfade

**Feuer-Pfad ("Vergeltungswächter")**
- Strategie: "Schaden zurückwerfen", Reflektion-Fokus
- Stärken: Höchster Einzelzielschaden, Gegner-Selbstschaden
- Beispiel: Klingenschlag → Flammenklinge (0,5s Zeitgewinn) → Rächerklinge (1,0s Zeitgewinn) → Vergeltungsklinge (2,0s Zeitgewinn)

**Eis-Pfad ("Chronobarriere")**
- Strategie: "Verzögern und Überleben"
- Stärken: Höchste Zeitrückgewinnung, längste Blockdauer
- Beispiel: Zeitschild → Frostschild (5s Block, +1,0s) → Eisbarriere (6s Block, +1,0s) → Permafrostschild (7s Block, +1,5s)

**Blitz-Pfad ("Tempoverteidiger")**
- Strategie: "Effizienz und Kartenfluss"
- Stärken: Höchste Kartenzugrate, Kostenreduktion
- Beispiel: Zeitliche Effizienz → Zeitbeschleunigung (alle -0,5s für 5s) → Zeitsprint (alle -1,0s für 5s) → Zeitrausch (alle -1,0s für 8s)

#### 3.2.5 Weltaffinitäten

| Welt | Affinität | Besonderheit | Restzeit-Durchschnitt |
|------|-----------|--------------|----------------------|
| Zeitwirbel-Tal | Ausgeglichen | Konsistente Überlebensrate | 14s |
| Flammen-Schmiede | Niedrig-Mittel | Reflexionseffekte gegen DoT | 12s |
| Eiszeit-Festung | Hoch (Heimvorteil) | Optimale Synergie mit Zeitstasis | 17s |
| Gewittersphäre | Mittel | Chronoresonanz verbessert Performance | 14s |
| Chronos-Nexus | Hoch | Ausgewogene Defensiv- und Offensivfähigkeiten | 16s |

### 3.3 Schattenschreiter

Der Schattenschreiter ist eine Schurken-Klasse, die Schnelligkeit, Zeitdiebstahl und Momentum-basierte Kombos kombiniert.

#### 3.3.1 Klassenidentität

- **Designphilosophie**: Temporales Momentum, Ressourcendiebstahl, evasive Taktiken
- **Spielstil**: Schnell, zeitstehlend, ausweichend, kombo-orientiert
- **Stärken**: Höchster Kartendurchsatz, 0-Kosten-Effekte, Zeitdiebstahl
- **Schwächen**: Geringere Fehlertoleranz, niedrigere Einzelkarteneffekte

#### 3.3.2 Deckzusammensetzung (26 Karten)

| Kategorie | Anzahl | Anteil | Zweck |
|-----------|--------|--------|-------|
| Basis-Angriffe | 8 (5+3) | 31% | Primäre Schadensquelle |
| Schattenkarten | 7 (4+3) | 27% | Ausweichen, 0-Kosten-Synergien |
| Zeitdiebstahl | 6 (3+3) | 23% | Ressourcengewinnung |
| Kettenkarten | 4 | 15% | Kombo-Verbindungen |
| Signaturkarten | 1 | 4% | Wendepunkt-Fähigkeiten |

#### 3.3.3 Klassenspezifische Mechaniken

- **Momentum-System**: Jede gespielte Karte generiert 1 Momentum (max. 5), bei 3+ kosten Schattenkarten 0 Zeit
- **Schattensynergie**: Nach einer Schattenkarte kostet die nächste Angriffskarte 0 Zeit
- **Zeitsplitter (Passiv)**: Gegner unter 30% Gesundheit: Zeitdiebstahl +50% effektiver

#### 3.3.4 Evolutionspfade

**Feuer-Pfad ("Blutschatten")**
- Strategie: "Brennen und Stehlen", DoT-fokussiert
- Stärken: Höchster nachhaltiger Schaden, Zeitgewinn durch DoT
- Beispiel: Schattendolch → Brennender Dolch (0,5s Zeitgewinn) → Ascheklinge (1,0s Zeitgewinn) → Höllenstich (2,0s Zeitgewinn)

**Eis-Pfad ("Nebelwandler")**
- Strategie: "Ausweichen und Überleben"
- Stärken: Höchste Überlebensfähigkeit, Timing-Vorteil
- Beispiel: Schleier → Nebelschleier (2 Angriffe verfehlen) → Frostschleier (3 Angriffe verfehlen) → Eisnebel (4 Angriffe verfehlen)

**Blitz-Pfad ("Stromdieb")**
- Strategie: "Geschwindigkeit und Effizienz"
- Stärken: Höchster Kartendurchsatz, extreme Kombo-Potenziale
- Beispiel: Schattendolch → Blitzdolch (0s nach Schattenkarte) → Sturmklinge (+1 Karte bei 0-Kosten) → Gewitterstich (+2 Karten, +1 Momentum)

#### 3.3.5 Weltaffinitäten

| Welt | Stärke | Strategie | Restzeit-Durchschnitt |
|------|--------|-----------|----------------------|
| Zeitwirbel-Tal | Durchschnittlich | Zeitriss-Aktivierung durch Schattenschritt | 10s |
| Flammen-Schmiede | Überdurchschnittlich | DoT-Zeitgewinne optimal nutzen | 11s |
| Eiszeit-Festung | Unterdurchschnittlich | Direkten Schaden statt Zeitdiebstahl fokussieren | 9s |
| Gewittersphäre | Herausragend | Blitz-Evolutionen maximieren | 14s |
| Chronos-Nexus | Überdurchschnittlich | Temporales Echo für 0-Kosten-Ketten | 13s |

---

## 4. Welten und Kampffeld-Effekte

### 4.1 Welt 1: Zeitwirbel-Tal

#### 4.1.1 Thematische Gestaltung
Eine Region am Rande temporaler Störungen, wo Zeitanomalien alltäglich sind. Violette und blaue Energieströme durchziehen die Landschaft.

#### 4.1.2 Kampffeld-Effekte

**Zeitriss-Effekt**
- **Mechanik**: Zeitrisse erscheinen an festen Positionen, geben bei Aktivierung +1,0s
- **Aktivierung**: Durch Karteneffekt, benötigt präzises Timing
- **Parameter**:
  - Zeitgewinn: 1,0s pro Riss
  - Optimales Aktivierungsfenster: 2,0s
  - Max. aktive Risse: 2 gleichzeitig

**Schwankender Zeitfluss-Effekt**
- **Mechanik**: Kartenkosten wechseln alle 4 Züge zwischen +10% und -10%
- **Visuelle Indikatoren**: Blau (Beschleunigung, -10%), Rot (Verlangsamung, +10%)

#### 4.1.3 Dungeons
1. **Zerbrochene Chronologie**: Einführung in die Grundmechaniken
2. **Kammer der ersten Zeit**: Einführung der Zeitrisse
3. **Nebelfelder der Zeit**: Einführung des schwankenden Zeitflusses, erster Boss "Nebelwandler"

#### 4.1.4 Klassenbalance
- **Ausgeglichen**: Geeigneter Einstieg für alle Klassen
- **Restzeit-Durchschnitt**: Chronomant (12s), Zeitwächter (14s), Schattenschreiter (10s)

### 4.2 Welt 2: Flammen-Schmiede

#### 4.2.1 Thematische Gestaltung
Vulkanisches Gebiet mit geschmolzenem Metall und Zeitfragmenten. Riesige Schmiedewerkstätten, in denen Zeit und Feuer verschmelzen.

#### 4.2.2 Kampffeld-Effekte

**Zeitverbrennung-Effekt**
- **Mechanik**: DoT-Kategoriesystem mit direktem Zeitgewinn bei Anwendung
- **Parameter**:
  - Schwacher DoT (1 Schaden/Tick): 0,5s Zeitgewinn
  - Mittlerer DoT (2-3 Schaden/Tick): 1,0s Zeitgewinn
  - Starker DoT (4+ Schaden/Tick): 2,0s Zeitgewinn
  - Max. Zeitgewinn pro Kampf: 6,0s (10% der Kampfzeit)

**Zeittemperung-Effekt**
- **Mechanik**: DoT-Effekte verstärken nachfolgende Angriffe
- **Parameter**:
  - DoT-Kategorie → Angriffsbonus: Schwach +15%, Mittel +25%, Stark +40%
  - Verstärkungsdauer: 2 Spielerzüge
  - Visuelles Feedback: Glühende Waffen/Karten

#### 4.2.3 Dungeons
1. **Brennende Zeitlinie**: DoT-fokussierte Gegner, Einführung des Zeitverbrennungs-Effekts
2. **Die Chrono-Esse**: Stapelbare DoT-Effekte, Zeittemperung
3. **Kessel der ewigen Flamme**: DoT-Kettenreaktionen, Boss "Erzsiederin Ignium"

#### 4.2.4 Klassenbalance
- **Begünstigt**: Chronomant > Schattenschreiter > Zeitwächter
- **Restzeit-Durchschnitt**: Chronomant (15s), Zeitwächter (12s), Schattenschreiter (11s)

### 4.3 Welt 3: Eiszeit-Festung

#### 4.3.1 Thematische Gestaltung
Verschneite Berglandschaft mit kristallinen Zeitstrukturen und gefrorenen Wasserfällen. Majestätische Eisfestungen thronen über Gletschern.

#### 4.3.2 Kampffeld-Effekte

**Zeitstasis-Effekt**
- **Mechanik**: Reduziert Zeitdiebstahleffektivität um 40% (angepasst von 50%)
- **Parameter**:
  - Zeitdiebstahlreduktion: 40%
  - Visuelle Darstellung: Schimmernde Barriere um Timer
  - Kein Einfluss auf andere Zeitmanipulationen

**Kristallisierte Zeit-Effekt**
- **Mechanik**: Jede dritte gespielte Karte löst Gegner-Skip aus
- **Parameter**:
  - Skip-Auslöser: Nach 3 Karten
  - Zähler-Reset bei Auslösung
  - UI-Anzeige: Kristallzähler (1-3)

#### 4.3.3 Dungeons
1. **Frostchronik-Spiegelgänge**: Einführung in Slow-Mechaniken
2. **Gefrorene Momente**: Kristallisierte Zeit
3. **Permafrost-Zitadelle**: 40% Zeitstasis, Boss "Permafrost-Monarch"

#### 4.3.4 Klassenbalance
- **Begünstigt**: Zeitwächter > Chronomant > Schattenschreiter
- **Restzeit-Durchschnitt**: Chronomant (13s), Zeitwächter (17s), Schattenschreiter (9s)

### 4.4 Welt 4: Gewittersphäre

#### 4.4.1 Thematische Gestaltung
Schwebende Inseln in einem dauerhaften Gewittersturm, verbunden durch Blitzbrücken. Zeitrisse leuchten bei jedem Blitzschlag auf.

#### 4.4.2 Kampffeld-Effekte

**Chronoresonanz-Effekt**
- **Mechanik**: Nach 2 gespielten Karten kostet die nächste 50% weniger + 0,5s Zeitgewinn
- **Parameter**:
  - Kartenanzahl: 2 (reduziert von 3)
  - Kostenreduktion: 50%
  - Zusätzlicher Zeitgewinn: 0,5s (neu)

**Zeitliche Entladung-Effekt**
- **Mechanik**: Jede fünfte Karte kostet 0 Zeit
- **Parameter**:
  - Auslöser: 5 gespielte Karten
  - Effekt: Nächste Karte kostet 0 Zeit
  - Visuelles Feedback: Blitzeffekt bei Auslösung

#### 4.4.3 Dungeons
1. **Kammern des Widerhalls**: Einführung in Ketteneffekte
2. **Blitzdurchsetzte Leere**: Zeitliche Entladung
3. **Zitadelle der Resonanz**: Chronoresonanz, Boss "Der Frequenzmeister"

#### 4.4.4 Klassenbalance
- **Begünstigt**: Schattenschreiter > Chronomant > Zeitwächter
- **Restzeit-Durchschnitt**: Chronomant (18s), Zeitwächter (14s), Schattenschreiter (14s)

### 4.5 Welt 5: Chronos-Nexus

#### 4.5.1 Thematische Gestaltung
Das Herzstück der temporalen Konflikte. Eine massive Struktur, in der alle Zeitlinien zusammenlaufen. Architektur aus pulsierender Zeitenergie und fragmentierten Realitäten.

#### 4.5.2 Kampffeld-Effekte

**Elementsymbiose-Effekt**
- **Mechanik**: Elementwechsel verstärkt Effekte
- **Parameter**:
  - Verstärkung: 30% bei Wechsel des Elementartyps
  - Neutrale Karten: Zählen nicht für Elementwechsel
  - Gültige Elementwechsel: Feuer→Eis, Eis→Blitz, Blitz→Feuer (zyklisch)

**Temporales Echo-Effekt**
- **Mechanik**: Jede vierte Karte wird in der nächsten Runde automatisch wiederholt
- **Parameter**:
  - Auslöser: Vierte gespielte Karte
  - Echo-Effekt: Keine Zeitkosten, selbe Werte
  - Max. aktive Echos: 1

**Zeitlinienkonvergenz-Effekt**
- **Mechanik**: Rundenbasierter Bonus-Wechsel
- **Parameter**: Deterministische 4-Runden-Sequenz:
  1. Schadensboost (+20%)
  2. Kostenreduktion (-15%)
  3. Kartenziehen (+1)
  4. Zeitgewinn (+1s)

#### 4.5.3 Dungeons
1. **Zeitschmiede der Ewigkeit**: Elementsymbiose, Multi-Element-Gegner
2. **Hallen des Widerhalls**: Temporales Echo
3. **Konvergenz der Zeitlinien**: Zeitlinienkonvergenz, Boss "Chronos-Archon"

#### 4.5.4 Klassenbalance
- **Ausgeglichen**: Angepasst für alle Klassenspezialisierungen
- **Restzeit-Durchschnitt**: Chronomant (16s), Zeitwächter (16s), Schattenschreiter (13s)

---

## 5. Tutorial und Progression

### 5.1 Tutorial-Dungeon: Der Zerrissene Zeitstrom

#### 5.1.1 Dreiphasiges System
```
Phase 1: Grundlagen (Zeitschleifer)
  → Phase 2: Zeitmanipulation (Kristallwächter)
    → Phase 3: Elementarinteraktionen (Chrono-Anomalie)
```

#### 5.1.2 Lernziele

| Phase | Primäre Lernziele | Sekundäre Lernziele |
|-------|-------------------|---------------------|
| 1 | Spielablauf, Kartennutzung | 60s-Zeitlimit, gegnerisches Verhalten |
| 2 | Zeitmanipulation, Gegner-Zeitdiebstahl | Karteneffizienz, Verteidigung |
| 3 | Elementareffekte, DoT-Kategorien | Evolutionssystem, Materialien |

#### 5.1.3 Gegnerdesign

**Zeitschleifer (Phase 1)**
- **HP**: 12 (leicht besiegbar)
- **Aktionen**:
  - Sandschleier: 3s-Intervall, 2 Schaden
  - Zeitdiebstahl: 12s-Intervall, -1s vom Haupttimer
  - Zeitschleife: 20s-Intervall, +3 HP Selbstheilung

**Kristallwächter (Phase 2)**
- **HP**: 25 (moderate Herausforderung)
- **Aktionen**:
  - Kristallsturz: 5s-Intervall, 3 Schaden
  - Temporale Blockade: 12s-Intervall, blockiert zufällige Karte
  - Zeitdiebstahl: 25s-Intervall, -2s vom Haupttimer
  - Kristallrüstung: 15s-Intervall, -30% nächster Schaden

**Chrono-Anomalie (Phase 3)**
- **HP**: 40 (anspruchsvoll, aber bewältigbar)
- **Aktionen**:
  - Zeitfluss: 4s/2s-Intervall, 3 Schaden
  - Temporales Vakuum: 10s-Intervall, +0,5s Kartenkosten für 3s
  - Zeitreversion: 15s-Intervall, +5 HP Selbstheilung
  - Zeitdiebstahl: 30s-Intervall, -3s vom Haupttimer
  - **Phasenwechsel**: Bei 50% HP, beschleunigt Zeitfluss-Intervall

#### 5.1.4 Erste Evolution

| Element | Evolvierte Karte | Primärer Effekt | Spielstil |
|---------|------------------|----------------|-----------|
| Feuer | Funke | 1s, 2 Schaden + 1 DoT (●) | Offensiv (+0,5s) |
| Eis | Frosthauch | 1,5s, 3 + 15% Slow | Defensiv |
| Blitz | Statische Entladung | 1s, 3 + Ketteneffekt (70%) | Effizient |

#### 5.1.5 Garantierte Materialien
- **Feuer**: 1× Feuerkern, 3× Funkenfragment, 1-2× Zeitstaub
- **Eis**: 1× Eiskern, 3× Eissplitter, 1-2× Zeitstaub
- **Blitz**: 1× Blitzkern, 3× Funkenstaub, 1-2× Zeitstaub

### 5.2 70/30-Materialverteilungssystem

#### 5.2.1 Grundprinzip
- Jede elementare Welt (2-4) liefert **70% Materialien des Weltelements** und **30% diversifizierte Materialien**
- Neutrale Welten (1, 5) liefern ausgewogene Materialverteilung
- System gewährleistet Hauptentwicklung im thematischen Element und sekundäre Evolutionen in anderen Elementen

#### 5.2.2 Weltspezifische Materialverteilung

| Welt | Primärelement | Verteilung |
|------|---------------|------------|
| 1: Zeitwirbel-Tal | Neutral | Ausgewogen (ca. 25% pro Element) |
| 2: Flammen-Schmiede | Feuer | 70% Feuer, 30% andere (je 10%) |
| 3: Eiszeit-Festung | Eis | 70% Eis, 30% andere (je 10%) |
| 4: Gewittersphäre | Blitz | 70% Blitz, 30% andere (je 10%) |
| 5: Chronos-Nexus | Alle | Ausgewogen + höherer Seltenheitsgrad |

#### 5.2.3 Material-Akkumulation

| Welt | Gewöhnlich | Ungewöhnlich | Selten | Episch | Legendär | Mythisch |
|------|------------|--------------|--------|--------|----------|----------|
| 1 | 250-300 | 60-70 | - | - | - | - |
| 1-2 | 600-700 | 150-180 | 15-20 | - | - | - |
| 1-3 | 1000-1200 | 250-300 | 40-50 | 2-5 | - | - |
| 1-4 | 1500-1800 | 350-400 | 80-100 | 10-15 | 1-3 | - |
| 1-5 | 2200-2500 | 500-600 | 150-180 | 25-35 | 5-8 | 1-2 |

#### 5.2.4 Evolutionsfortschritt

Nach 5 Welten durchschnittlich:
- 6-8 Karten evolviert (23-31% des Decks)
- 2-3 Karten auf Stufe 3 (höchste)
- 2-3 Karten auf Stufe 2
- 2-3 Karten auf Stufe 1

### 5.3 Schwierigkeitsstufen

#### 5.3.1 Dreistufiges Progressionssystem

| Schwierigkeit | Freischaltung | Primärzielgruppe | Materialmodifikator |
|---------------|---------------|------------------|---------------------|
| Normal | Sofort verfügbar | Neue Spieler, Progression | 1.0× (Basis) |
| Heroisch | Nach Abschluss des entsprechenden Dungeons auf Normal | Erfahrene Spieler | 1.5× |
| Legendär | Nach Abschluss des entsprechenden Dungeons auf Heroisch | Hardcore-Spieler, Endgame | 2.5× |

#### 5.3.2 Schwierigkeitsstufe: Normal

- **Zeitlimit**: 60 Sekunden pro Kampf
- **Gegner-HP**: Basiswerte (100%)
- **Gegner-Schaden**: Basiswerte (100%)
- **Zeitdiebstahl-Limit**: 15% der Gesamtzeit (9s bei 60s Kampf)
- **Feldeffekt-Stärke**: Standard (100%)

#### 5.3.3 Schwierigkeitsstufe: Heroisch

- **Zeitlimit**: 60 Sekunden pro Kampf (unverändert)
- **Gegner-HP**: Erhöht (125%)
- **Gegner-Schaden**: Erhöht (120%)
- **Zeitdiebstahl-Limit**: 18% der Gesamtzeit (10,8s bei 60s Kampf)
- **Feldeffekt-Stärke**: Verstärkt (125%)
- **Feldeffekt-Modifikationen**: Angepasste Parameter (z.B. kürzeres Aktivierungsfenster für Zeitrisse)

#### 5.3.4 Schwierigkeitsstufe: Legendär

- **Zeitlimit**: 50 Sekunden pro Kampf (reduziert)
- **Gegner-HP**: Stark erhöht (150%)
- **Gegner-Schaden**: Stark erhöht (140%)
- **Zeitdiebstahl-Limit**: 20% der Gesamtzeit (10s bei 50s Kampf)
- **Feldeffekt-Stärke**: Maximal (150%)
- **Zusätzlich**: "Zweites Element"-Mechanik (z.B. Welt 2 + Blitz-Sekundärelement)

---

## 6. Kartenreferenz

### 6.1 Chronomant-Karten

#### 6.1.1 Basiszauber

**Arkaner Stoß (CARD-MAGE-ARCANEBOLT)**
- **Basis**: 1,5s, 4 Schaden
- **Startdeck**: 8 Karten
- **Evolution**: 3 Elementarpfade

*Feuer-Evolution*
| Stufe | Kosten | Effekt | DoT-Kategorie | Zeitgewinn | Materialien |
|-------|--------|--------|--------------|------------|-------------|
| 1: Funke | 1s | 2 + 1 DoT | Schwach (●) | 0,5s | 1× Feuerkern, 3× Funkenfragment |
| 2: Feuerstoß | 1,5s | 4 + 2 DoT | Mittel (●●) | 1,0s | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern |
| 3: Feuerlanze | 2s | 6 + 4 DoT | Stark (●●●) | 2,0s | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz |

*Eis-Evolution*
| Stufe | Kosten | Effekt | Materialien |
|-------|--------|--------|------------|
| 1: Frosthauch | 1,5s | 3 + 15% Slow | 1× Eiskern, 3× Eissplitter |
| 2: Eissplitter | 2s | 5 + 25% Slow (2s) | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Frostexplosion | 2,5s | 6 + 35% AoE Slow | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

*Blitz-Evolution*
| Stufe | Kosten | Effekt | Ketteneffekt | Materialien |
|-------|--------|--------|--------------|-------------|
| 1: Statische Entladung | 1s | 3 + Kette (1) | 70% | 1× Blitzkern, 3× Funkenstaub |
| 2: Kettenblitz | 2s | 4 + Kette (2) | 70% | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Blitzentladung | 2,5s | 5 + Kette (alle) | 70% | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

**Arkane Projektion (CARD-MAGE-ARCANEPROJECTION)**
- **Basis**: 2s, 5 Schaden
- **Startdeck**: 4 Karten
- **Evolution**: 3 Elementarpfade

#### 6.1.2 Zeitmanipulationskarten

**Verzögern (CARD-MAGE-DELAY)**
- **Basis**: 2s, Verzögert Gegnerangriff um 2s
- **Startdeck**: 3 Karten

*Basis-Evolution*
| Stufe | Kosten | Effekt | Materialien |
|-------|--------|--------|------------|
| 1: Verzögern+ | 2s | +3s Verzögerung | 1× Zeitfragment, 1× Zeitstaub |
| 2: Zeitverzerrung+ | 2,5s | +3s Verzögerung, -20% Schaden | 1× Zeitkristall, 2× Zeitfragment |
| 3: Zeitparadoxon | 3s | +4s Verzögerung, 30% Schadensreflektion | 1× Zeitessenz, 3× Zeitkristall |

**Beschleunigen (CARD-MAGE-ACCELERATE)**
- **Basis**: 2,5s, Nächste 2 Karten -0,5s
- **Startdeck**: 3 Karten

*Basis-Evolution*
| Stufe | Kosten | Effekt | Materialien |
|-------|--------|--------|------------|
| 1: Beschleunigen+ | 2,5s | Nächste 3 Karten -0,5s | 2× Zeitfragment, 1× Elementaressenz |
| 2: Zeitschub | 3s | Nächste 4 Karten -0,5s | 1× Zeitkristall, 3× Zeitfragment |
| 3: Zeitfluss | 3,5s | Nächste 3 Karten -1s | 1× Zeitessenz, 2× Zeitkristall |

#### 6.1.3 Signaturkarten

**Chronofluktuation (CARD-MAGE-CHRONOFLUCTUATION)**
- **Basis**: 5s, +3s, 10 AoE-Schaden, +1 Karte
- **Startdeck**: 1 Karte

*Basis-Evolution*
| Stufe | Kosten | Effekt | Materialien |
|-------|--------|--------|------------|
| 1: Chronofluktuation+ | 5s | +3,5s, 12 AoE | 1× Zeitessenz, 3× Zeitkristall |
| 2: Zeitbruch | 5,5s | +4s, 15 AoE | 1× Zeitkern, 2× Zeitessenz |
| 3: Chronoriss | 6s | +5s, 18 AoE, 30% Slow | 1× Reiner Zeitkern, 3× Zeitessenz |

### 6.2 Zeitwächter-Karten

#### 6.2.1 Basiskarten

**Klingenschlag (CARD-WAR-BLADESTRIKE)**
- **Basis**: 2,5s, 5 Schaden
- **Startdeck**: 8 Karten
- **Evolution**: 3 Elementarpfade

*Feuer-Evolution*
| Stufe | Kosten | Effekt | DoT-Kategorie | Materialien |
|-------|--------|--------|--------------|-------------|
| 1: Flammenklinge | 2,5s | 4 + 2 DoT | Schwach (0,5s) | 1× Feuerkern, 3× Funkenfragment |
| 2: Rächerklinge | 3,0s | 5 + 3 DoT, +1 Schaden pro Block | Mittel (1,0s) | 1× Vulkanessenz, 5× Funkenfragment, 3× Feuerkern |
| 3: Vergeltungsklinge | 3,5s | 6 + 4 DoT, +2 Schaden pro Block | Stark (2,0s) | 1× Reiner Feuerkern, 1× Phönixfeder, 5× Vulkanessenz |

**Schildstoß (CARD-WAR-SHIELDBASH)**
- **Basis**: 2,5s, 4 Schaden + 15% Zeitdiebstahlschutz (2s)
- **Startdeck**: 4 Karten
- **Evolution**: 3 Elementarpfade

#### 6.2.2 Verteidigungskarten

**Zeitschild (CARD-WAR-TIMESHIELD)**
- **Basis**: 2,5s, Blockt nächsten Angriff (4s) + 0,5s zurück
- **Startdeck**: 4 Karten
- **Evolution**: 3 Elementarpfade

*Eis-Evolution*
| Stufe | Kosten | Effekt | Materialien |
|-------|--------|--------|------------|
| 1: Frostschild | 2,5s | Blockt nächsten Angriff (5s), +1,0s zurück | 1× Eiskern, 3× Eissplitter |
| 2: Eisbarriere | 3,0s | Blockt nächsten Angriff (6s), +1,0s zurück | 1× Gefrorene Träne, 5× Eissplitter, 3× Eiskern |
| 3: Permafrostschild | 3,5s | Blockt nächsten Angriff (7s), +1,5s zurück | 1× Reiner Eiskern, 1× Ewiges Eis, 5× Gefrorene Träne |

#### 6.2.3 Signaturkarten

**Zeitfestung (CARD-WAR-TIMEFORTRESS)**
- **Basis**: 5,0s, +4s, 30% Zeitdiebstahlreduktion (6s), +1 Karte
- **Startdeck**: 1 Karte
- **Evolution**: 3 Elementarpfade

### 6.3 Schattenschreiter-Karten

#### 6.3.1 Basiskarten

**Schattendolch (CARD-ROG-SHADOWDAGGER)**
- **Basis**: 1,0s, 3 Schaden
- **Startdeck**: 5 Karten
- **Evolution**: 3 Elementarpfade

*Blitz-Evolution*
| Stufe | Kosten | Effekt | Materialien |
|-------|--------|--------|------------|
| 1: Blitzdolch | 1,0s | 3 Schaden, 0s nach Schattenkarte/3 Momentum | 1× Blitzkern, 3× Funkenstaub |
| 2: Sturmklinge | 1,0s | 4 Schaden, 0s nach Schattenkarte/3 Momentum, zieht 1 Karte bei 0-Kosten | 1× Gewitteressenz, 5× Funkenstaub, 3× Blitzkern |
| 3: Gewitterstich | 1,5s | 5 Schaden, 0s nach Schattenkarte/3 Momentum, zieht 1 Karte und +1 Momentum bei 0-Kosten | 1× Reiner Blitzkern, 1× Sturmkristall, 5× Gewitteressenz |

**Giftklinge (CARD-ROG-POISONBLADE)**
- **Basis**: 1,5s, 2 Schaden + 1 DoT (3s) (Schwach)
- **Startdeck**: 3 Karten
- **Evolution**: 3 Elementarpfade

#### 6.3.2 Schattenkarten

**Schleier (CARD-ROG-VEIL)**
- **Basis**: 0,5s, Nächster Angriff verfehlt
- **Startdeck**: 4 Karten
- **Evolution**: 3 Elementarpfade

**Schattenform (CARD-ROG-SHADOWFORM)**
- **Basis**: 1,5s, Nächste 2 Angriffe verfehlen, +0,5s pro vermiedenem Angriff
- **Startdeck**: 3 Karten
- **Evolution**: 3 Elementarpfade

#### 6.3.3 Zeitdiebstahlkarten

**Zeitdiebstahl (CARD-ROG-TIMETHEFT)**
- **Basis**: 1,0s, Stiehlt 0,5s vom Gegner
- **Startdeck**: 3 Karten
- **Evolution**: 3 Elementarpfade

**Temporaler Raub (CARD-ROG-TEMPORALTHEFT)**
- **Basis**: 1,5s, Stiehlt 1,0s vom Gegner, verursacht 2 Schaden
- **Startdeck**: 3 Karten
- **Evolution**: 3 Elementarpfade

---

## 7. Gameplay-Strategien

### 7.1 Chronomant-Strategien

#### 7.1.1 "Zeitschleife" (Tempo-Kombo)
- **Komponenten**: Beschleunigungseffekte → Kartenziehung → Effiziente Blitzkarten
- **Mechanik**: Positive Rückkopplungsschleife für Kartenrotation
- **Effekt**: 7-10 Karten in 10 Sekunden, dramatisch erhöhte APM

#### 7.1.2 "Zeitstillstand" (Kontroll-Kombo)
- **Komponenten**: Verzögerungseffekte + Eisevolution + Zeitverzerrung
- **Mechanik**: Kumulative Verlangsamung und Verzögerung
- **Effekt**: Gegner auf ~25% Normalgeschwindigkeit reduziert

#### 7.1.3 "Zeitexplosion" (Burst-Kombo)
- **Komponenten**: Elementarkonvergenz + Feuer-DoT + Chronofluktuation
- **Mechanik**: Schadensmaximierung mit Zeitrückgewinn
- **Effekt**: 40-50 Gesamtschaden mit 3-5s Zeitrückgewinn

#### 7.1.4 Evolutionspriorität

*Anfangsphase (0-5h)*
1. Arkaner Stoß → Statische Entladung (AoE, effizient)
2. Beschleunigen → Beschleunigen+ (Karteneffizienz)

*Mittlere Phase (5-15h)*
1. Statische Entladung → Kettenblitz (erhöhte AoE-Effizienz)
2. Verzögern → Verzögern+ (verbesserte Kontrolle)
3. Chronofluktuation → Chronofluktuation+ (Wendepunktkarte)

*Spezialisierungsphase (15h+)*
- **Elementarfokus**: Entwicklung des stärksten Elements auf Stufe 3
- **Multi-Elementar**: Entwicklung von je einem Pfad pro Element auf Stufe 2

### 7.2 Zeitwächter-Strategien

#### 7.2.1 "Zeitliche Vergeltung" (Defensiv-Offensiv-Kombo)
- **Komponenten**: Zeitschild → Klingenschlag → Temporaler Konter
- **Mechanik**: Blockieren, dann verstärkter Gegenangriff mit Reflexion
- **Effekt**: 11-13 Schaden plus Zeitrückgewinnung (1,5-2,5s)

#### 7.2.2 "Ewiger Schild" (Überlebens-Kombo)
- **Komponenten**: Ewige Wacht → Zeitschild → Zeitschild → Zeitfluss-Kontrolle
- **Mechanik**: Kostengünstige Blockketten mit Karten-Nachschub
- **Effekt**: 8-10s effizienter Schutz mit 2,0-3,0s Zeitrückgewinnung

#### 7.2.3 "Temporaler Sturm" (Tempo-Kombo)
- **Komponenten**: Zeitliche Effizienz → Zeitschild → Sturmklinge → Klingenschlag
- **Mechanik**: Reduzierte Kosten durch Effizienzverkettung
- **Effekt**: 9 Gesamtschaden mit 2,0-3,0s Zeitersparnis

#### 7.2.4 Evolutionspriorität

*Anfangsphase (0-5h)*
1. Zeitschild → Frostschild (verbesserte Verteidigung)

*Mittlere Phase (5-15h)*
1. Klingenschlag → Flammenklinge (Balance zwischen Verteidigung und Angriff)
2. Frostschild → Eisbarriere (noch bessere Defensivoption)

*Spezialisierungsphase (15h+)*
- **Defensiv-Fokus**: Eisbarriere → Permafrostschild
- **Balance-Fokus**: Flammenklinge → Rächerklinge + Eisbarriere

### 7.3 Schattenschreiter-Strategien

#### 7.3.1 "Schattenblitz"-Kombo (Effizienz-Kombo)
- **Komponenten**: Schleier (0,5s) → Blitzdolch (0s) → Schattenschritt (1,0s) → Giftklinge (1,5s)
- **Mechanik**: Ausweichen → 0-Kosten durch Schattenkarte → Effektboost → Verstärkter DoT
- **Gesamtkosten**: 3,0s für 4 Karten
- **Zeitgewinn**: 0,5s (durch schwachen DoT)

#### 7.3.2 "Zeitdiebstahl-Kette" (Ressourcen-Kombo)
- **Komponenten**: Schattenschritt (1,0s) → Zeitdiebstahl (1,0s) → Schleier (0,5s) → Blitzdolch (0s)
- **Mechanik**: +25% Zeitdiebstahl → Verstärkter Diebstahl (0,62s) → Ausweichen → 0-Kosten-Abschluss
- **Gesamtkosten**: 2,5s für 4 Karten
- **Zeitgewinn**: 0,62s (durch verstärkten Zeitdiebstahl)

#### 7.3.3 "Schattensturm" (Burst-Kombo)
- **Komponenten**: Schattenschritt (1,0s) → Schattensturm (4,0s) → Zeitsprung (3,0s)
- **Mechanik**: Effektboost → Verstärkter AoE-Schaden → Kartenziehung
- **Gesamtkosten**: 8,0s für 3 Karten
- **Zeitgewinn**: 3-5s (abhängig von Zielanzahl)

#### 7.3.4 Evolutionspriorität

*Anfangsphase (0-5h)*
1. Schattendolch → Blitzdolch (Tempo-Optimierung)
2. Schleier → Rauchschleier (Defensive Option)

*Mittlere Phase (5-15h)*
1. Blitzdolch → Sturmklinge (Kartenziehung und Effizienz)
2. Zeitdiebstahl → Blitzraub (Ressourcenoptimierung)

*Spezialisierungsphase (15h+)*
- **Für Anfänger**: Eis-Pfad (defensiver, fehlertoleranter)
- **Für Experten**: Blitz-Pfad (höchste Kartenrotation)
- **Für Bossgegner**: Feuer-Pfad (höchster konstanter Schaden)
