-- SQL zum Befüllen der Spielerdaten mit Testwerten
-- Diese SQL-Anweisungen sollten nach dem Erstellen der Tabellen ausgeführt werden

-- Füge Testkarten zu den Testspielern hinzu
-- Chronomant-Karten für test_player_1
INSERT INTO public.player_cards (player_id, card_id, quantity, is_favorite)
SELECT 'test_player_1', id, 2, true FROM public.cards WHERE type = 'Chronomant' AND name = 'Arkaner Stoß';

INSERT INTO public.player_cards (player_id, card_id, quantity)
SELECT 'test_player_1', id, 3 FROM public.cards WHERE type = 'Chronomant' AND name = 'Funke';

INSERT INTO public.player_cards (player_id, card_id, quantity)
SELECT 'test_player_1', id, 1 FROM public.cards WHERE type = 'Chronomant' AND name = 'Feuerball';

INSERT INTO public.player_cards (player_id, card_id, quantity)
SELECT 'test_player_1', id, 2 FROM public.cards WHERE type = 'Chronomant' AND name = 'Zeitverzerrung';

INSERT INTO public.player_cards (player_id, card_id, quantity)
SELECT 'test_player_1', id, 2 FROM public.cards WHERE type = 'Chronomant' AND name = 'Arkane Intelligenz';

-- Zeitwächter-Karten für test_player_2
INSERT INTO public.player_cards (player_id, card_id, quantity, is_favorite)
SELECT 'test_player_2', id, 3, true FROM public.cards WHERE type = 'Zeitwächter' AND name = 'Klingenschlag';

INSERT INTO public.player_cards (player_id, card_id, quantity)
SELECT 'test_player_2', id, 2 FROM public.cards WHERE type = 'Zeitwächter' AND name = 'Flammenklinge';

INSERT INTO public.player_cards (player_id, card_id, quantity)
SELECT 'test_player_2', id, 2 FROM public.cards WHERE type = 'Zeitwächter' AND name = 'Schildstoß';

INSERT INTO public.player_cards (player_id, card_id, quantity, is_favorite)
SELECT 'test_player_2', id, 3, true FROM public.cards WHERE type = 'Zeitwächter' AND name = 'Zeitschild';

INSERT INTO public.player_cards (player_id, card_id, quantity)
SELECT 'test_player_2', id, 1 FROM public.cards WHERE type = 'Zeitwächter' AND name = 'Zeitbarriere';

-- Schattenschreiter-Karten für test_player_3
INSERT INTO public.player_cards (player_id, card_id, quantity, is_favorite)
SELECT 'test_player_3', id, 3, true FROM public.cards WHERE type = 'Schattenschreiter' AND name = 'Schattendolch';

INSERT INTO public.player_cards (player_id, card_id, quantity)
SELECT 'test_player_3', id, 2 FROM public.cards WHERE type = 'Schattenschreiter' AND name = 'Brennender Dolch';

INSERT INTO public.player_cards (player_id, card_id, quantity)
SELECT 'test_player_3', id, 2 FROM public.cards WHERE type = 'Schattenschreiter' AND name = 'Giftklinge';

INSERT INTO public.player_cards (player_id, card_id, quantity)
SELECT 'test_player_3', id, 2 FROM public.cards WHERE type = 'Schattenschreiter' AND name = 'Schleier';

INSERT INTO public.player_cards (player_id, card_id, quantity, is_favorite)
SELECT 'test_player_3', id, 1, true FROM public.cards WHERE type = 'Schattenschreiter' AND name = 'Zeitdiebstahl';

-- Materialien für die Testspieler hinzufügen
-- Materials für test_player_1 (Chronomant)
INSERT INTO public.player_materials (player_id, material_type, quantity)
VALUES
('test_player_1', 'time_essence', 250),
('test_player_1', 'fire_crystal', 45),
('test_player_1', 'water_crystal', 30),
('test_player_1', 'air_crystal', 25),
('test_player_1', 'common_dust', 120);

-- Materials für test_player_2 (Zeitwächter)
INSERT INTO public.player_materials (player_id, material_type, quantity)
VALUES
('test_player_2', 'time_essence', 210),
('test_player_2', 'fire_crystal', 30),
('test_player_2', 'water_crystal', 50),
('test_player_2', 'metal_fragment', 35),
('test_player_2', 'guardian_shard', 15);

-- Materials für test_player_3 (Schattenschreiter)
INSERT INTO public.player_materials (player_id, material_type, quantity)
VALUES
('test_player_3', 'time_essence', 280),
('test_player_3', 'shadow_essence', 65),
('test_player_3', 'fire_crystal', 40),
('test_player_3', 'void_shard', 12),
('test_player_3', 'common_dust', 95);

-- Beispiel-Decks für die Spieler erstellen
-- Deck für test_player_1 (Chronomant)
INSERT INTO public.player_decks (player_id, deck_name, deck_class, cards, is_active)
VALUES (
    'test_player_1',
    'Feuerzauber-Deck',
    'Chronomant',
    ARRAY(
        SELECT id FROM public.cards 
        WHERE name IN ('Arkaner Stoß', 'Funke', 'Feuerball', 'Zeitverzerrung', 'Arkane Intelligenz')
    ),
    true
);

-- Deck für test_player_2 (Zeitwächter)
INSERT INTO public.player_decks (player_id, deck_name, deck_class, cards, is_active)
VALUES (
    'test_player_2',
    'Verteidigungsdeck',
    'Zeitwächter',
    ARRAY(
        SELECT id FROM public.cards 
        WHERE name IN ('Klingenschlag', 'Flammenklinge', 'Schildstoß', 'Zeitschild', 'Zeitbarriere')
    ),
    true
);

-- Deck für test_player_3 (Schattenschreiter)
INSERT INTO public.player_decks (player_id, deck_name, deck_class, cards, is_active)
VALUES (
    'test_player_3',
    'Assassinendeck',
    'Schattenschreiter',
    ARRAY(
        SELECT id FROM public.cards 
        WHERE name IN ('Schattendolch', 'Brennender Dolch', 'Giftklinge', 'Schleier', 'Zeitdiebstahl')
    ),
    true
);

-- Einige Beispiel-Achievements für die Spieler
INSERT INTO public.player_achievements (player_id, achievement_name, progress, completed)
VALUES
('test_player_1', 'Feuermagier', 75, false),
('test_player_1', 'Kartensammler', 100, true),
('test_player_2', 'Unaufhaltsamer Verteidiger', 50, false),
('test_player_2', 'Zeitmeister', 100, true),
('test_player_3', 'Meisterassassine', 80, false),
('test_player_3', 'Schattenläufer', 100, true);