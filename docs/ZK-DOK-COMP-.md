# Dokumentationsmanagement-Framework (ZK-DOK-COMP-v2.0-20250324)

## Änderungshistorie
- v2.0 (2025-03-24): Komprimierte Version von ZK-DOK-v2.0-20250324

## Zusammenfassung
Struktur und Prozesse für das Dokumentationsmanagement des Zeitklingen-Projekts mit eindeutigen Referenzsystemen, modularem Aufbau und klarer Versionierung. Gewährleistet Einheitlichkeit, Aktualität und Auffindbarkeit aller Projektdokumente.

## 1. Dokumentationsstruktur

### 1.1 Kernprinzipien
- **Single Source of Truth**: Information existiert an genau einem Ort
- **Modularität**: Klare Abgrenzung der Dokumentbereiche
- **Stabiles Referenzsystem**: Eindeutige IDs für alle Elemente
- **Explizite Abhängigkeiten**: Klare Referenzierung
- **Versionskontrolle**: Präzise Nummerierung und Historie

### 1.2 Dokumenthierarchie
```
EBENE 1: PROJEKTDOKUMENTATION
• Projektübersicht (ZK-PROJ)
• Designleitfaden (ZK-DESIGN)
• Dokumentationsstandards (ZK-DOK)

EBENE 2: KERNSYSTEME
• Spielmechanik-Grundlagen (ZK-MECH)
• Zeitsystem (ZK-TIME)
• Evolutionssystem (ZK-EVO)
• Materialsystem (ZK-MAT)
• UI/UX-Framework (ZK-UI)

EBENE 3: INHALTSMODULE
• Klassen-Module (ZK-CLASS-[ID])
• Dungeon-Module (ZK-DUN-[ID])
• Gegner-Module (ZK-ENEMY-[ID])
• Karten-Module (ZK-CARD-[ID])

EBENE 4: IMPLEMENTIERUNGSDETAILS
• Implementierungsleitfäden (ZK-IMPL-[System])
• Technische Spezifikationen (ZK-TECH-[System])
• Testprotokolle (ZK-TEST-[System])
```

### 1.3 Referenzsystem
- **Kartenreferenzen**: `CARD-[Klasse]-[Name]` (z.B. `CARD-MAGE-ARCANEBOLT`)
- **Mechanikreferenzen**: `MECH-[Name]` (z.B. `MECH-TIMETHEFT`)
- **Gegnerreferenzen**: `ENEMY-[Typ]-[Name]` (z.B. `ENEMY-BOSS-CHRONOANOMALY`)
- **Systemreferenzen**: `SYS-[Name]` (z.B. `SYS-EVOLUTION`)

## 2. Dokumenttypen und Templates

### 2.1 Spezialisierte Dokumenttypen
| Typ | Präfix | Fokus | Aktualisierungsfrequenz |
|-----|--------|-------|------------------------|
| Konzeptdokumente | ZK-KONZ | Designphilosophie | Selten |
| Systemdokumente | ZK-SYS | Systembeschreibungen | Mittel |
| Inhaltsdokumente | ZK-CONT | Spielinhalte | Häufig |
| Implementierungsdokumente | ZK-IMPL | Technische Umsetzung | Sehr häufig |
| Referenzdokumente | ZK-REF | Zusammenfassungen, Listen | Bei Bedarf |

### 2.2 Dokumentstruktur
```markdown
# [Titel] (ZK-[Typ]-[Version]-[Datum])

## Änderungshistorie
- v1.0 (YYYY-MM-DD): Erstversion
- v1.1 (YYYY-MM-DD): [Änderungsbeschreibung]

## Zusammenfassung
[Kurze Zusammenfassung - 2-3 Sätze]

## 1. [Hauptabschnitt]
### 1.1 [Unterabschnitt]
[Inhalt]

## Quellendokumente
- [ZK-Typ-Version-Datum]: [Beziehung]

## Abhängige Dokumente
- [ZK-Typ-Version-Datum]: [Beziehung]

## Statusindikator
- [FINAL/DRAFT/OBSOLET]
- Ersetzt durch: [ZK-Typ-Version-Datum]
```

### 2.3 Datenseparationsmodell
```
1. GRUNDKONZEPTE
- Unveränderliche Kernmechaniken
- Langfristige Design-Philosophie

2. SYSTEMDEFINITIONEN
- Mechanische Regeln (abstrahiert)
- Formel- und Berechnungsgrundlagen

3. BALANCING-PARAMETER
- Konkrete Zahlenwerte
- Anpassbare Multiplikatoren

4. INHALTSMODUL-DEFINITIONEN
- Implementation spezifischer Instanzen
- Charakterdefinitionen, Dungeons, etc.

5. ABHÄNGIGKEITSREGISTER
- Explizite Referenzen zwischen Dokumenten
- Änderungsauswirkungsmodell
```

## 3. Versionierungsrichtlinien

### 3.1 Semantische Versionierung
- **Major**: Grundlegende Änderungen der Konzeption/Funktionsweise
- **Minor**: Neue Funktionen/Anpassungen (abwärtskompatibel)
- **Patch**: Bugfixes, kleine Anpassungen, Klarstellungen

### 3.2 Versionspflegeprozess
1. **Entwurf markieren**: `DRAFT`-Status während der Erstellung
2. **Review-Prozess**: Dokumentierter Review nach Fertigstellung
3. **Publikation**: `FINAL`-Status nach Genehmigung
4. **Veraltete Dokumente**: `OBSOLET`-Status mit Nachfolgerverweis

### 3.3 Änderungsauswirkungsmodell
```
ÄNDERUNGSGRAD    ERFORDERLICHE MASSNAHMEN
Niveau 1         • Nur betroffenes Dokument aktualisieren
(Lokal)          • Patch-Version erhöhen

Niveau 2         • Betroffenes Dokument aktualisieren
(Begrenzt)       • Direkt abhängige Dokumente referenzieren
                 • Minor-Version erhöhen

Niveau 3         • Betroffenes Dokument aktualisieren
(Umfassend)      • Alle abhängigen Dokumente überprüfen
                 • Zentrales Referenzdokument erstellen
                 • Major-Version erhöhen
```

## 4. Anwendungsbeispiele

### 4.1 Umstrukturierungsvorschlag
| Aktuelles Dokument | Neues Format | Änderungen |
|--------------------|--------------|------------|
| KS-GK-v1.1 | ZK-MECH-v1.0 | Extrahiere Mechanikbeschreibungen |
| | ZK-TIME-v1.0 | Isoliere Zeitmechanik |
| KS-KS-v1.2 | ZK-EVO-v1.0 | Evolutionssystem-Grundlagen |
| KS-KL-v1.1 | ZK-CLASS-MAGE-v1.0 | Chronomanten-Klassendefinition |

### 4.2 Referenzdatenmigration
- **Kartenreferenztabelle**: `ZK-REF-CARDS-v1.0`
- **Mechanikentabelle**: `ZK-REF-MECH-v1.0`
- **Gegnerreferenztabelle**: `ZK-REF-ENEMIES-v1.0`

### 4.3 Migrationsplan
1. **Phase 1**: Zentrale Referenzdokumente erstellen
2. **Phase 2**: Kernsysteme von Implementierungsdetails trennen
3. **Phase 3**: Inhaltsmodule nach neuer Struktur erstellen
4. **Phase 4**: Alte Dokumente als obsolet kennzeichnen

## 5. Wartungsrichtlinien

### 5.1 Regelmäßige Überprüfung
- Quartalsweise Review aller Dokumente
- Automatische Konsistenzprüfung
- Bereinigung veralteter Informationen

### 5.2 Änderungslokalisierung
```
ÄNDERUNGSTYP        AKTUALISIERUNGSSTRATEGIE
Kartenbalancing     Nur Balancing-Parameter
Mechanikänderung    Systemdefinition + Ref
Neuer Inhalt        Neues Inhaltsmodul
UI-Änderung         UI-Spezifikation
Konzeptänderung     Grundkonzept + Register
```

### 5.3 Verantwortlichkeiten
- **Dokumentationskoordinator**: Gesamtstruktur
- **Systemverantwortliche**: Systemdokumente
- **Inhaltsautoren**: Inhaltsmodule

## 6. Tools und Praktische Anwendung

### 6.1 Dokumentationstools
- **Markdown-Format**: Alle Dokumente
- **Git-Versionierung**: Änderungsverfolgung
- **Referenz-Validator**: Konsistenzprüfung

### 6.2 Workflow-Integration
1. **Dokumentationsänderung planen**: Definierter Umfang
2. **Änderungsauswirkung analysieren**: Abhängigkeiten identifizieren
3. **Dokumente aktualisieren**: Nach Minimalitätsprinzip
4. **Referenzen aktualisieren**: Querverweise
5. **Review und Genehmigung**: Durch Verantwortliche

### 6.3 Änderungsszenarien
- **Kartenbalance**: Nur ZK-CARD-PARAM, keine Systemänderungen
- **Neue Evolutionsstufe**: ZK-EVO + ZK-REF-EVO, keine Klassenänderungen
- **Zeit-Mechanik-Überarbeitung**: ZK-TIME Major-Update, abhängige Dokumente benachrichtigen

## 7. Beispieldokumente

### 7.1 Systemdokument (Zeitsystem)
```markdown
# Zeitsystem (ZK-TIME-v1.0-20250325)

## Änderungshistorie
- v1.0 (2025-03-25): Initiale Version, extrahiert aus KS-GK-v1.1-20250323

## Zusammenfassung
Fundamentales Zeitsystem von Zeitklingen als primäre Ressource für alle Spielmechaniken.

## 1. Kernkonzepte
### 1.1 Zeit als Ressource
- Jeder Kampf beginnt mit 60-90 Sekunden Zeitlimit
- Zeit ist die einzige Ressource des Spielers

## Quellendokumente
- KS-GK-v1.1-20250323: Originaldokument

## Abhängige Dokumente
- ZK-MECH-v1.0-20250325: Nutzt Zeitsystem als Grundlage
- ZK-CLASS-MAGE-v1.0-20250325: Implementiert zeitbasierte Fähigkeiten

## Statusindikator
- FINAL
```

## Quellendokumente
- KS-KS-v1.2-20250323: Überarbeitetes Deck-Evolution-System
- KS-DOK-v1.0-20250322: Material-Systems zum Kartenlevel

## Abhängige Dokumente
- ZK-PROJ-v1.0-20250325: Projektübersicht
- ZK-MECH-v1.0-20250325: Mechanik-Grundlagen
- ZK-TIME-v1.0-20250325: Zeitsystem