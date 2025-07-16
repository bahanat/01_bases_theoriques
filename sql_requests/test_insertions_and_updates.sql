-- AJOUTER UN NOUVEAU JEU

INSERT INTO games (
    name,
    release_date,
    link,
    short_desc,
    long_desc,
    price, 
    number_of_english_reviews,
    number_of_reviews_from_purchased_people,
    overall_player_rating
) VALUES (
    'Lost Ark',
    '2022-02-11',
    'https://store.steampowered.com/agecheck/app/1599340', 
    'Korean MMORPG',
    'A fantasy MMORPG taking place in Archesia...',
    0,
    1232,
    '(434555)',
    'Very Positive'
);

INSERT INTO games_genres (game_id, genre_id) VALUES
(292, 137),
(292, 208);


-- AJOUTER UNE CRITIQUE

INSERT INTO users (id, username) VALUES
(999666, 'Sandalcho7');

INSERT INTO reviews (
    game_id,
    user_id,
    hours_played,
    publication_date,
    review,
    recommandation, 
    helpful,
    funny
) VALUES (
    292,
    999666,
    6643, 
    '2025-07-16',
    'Vraiment pas mal dis-donc ce jeu !',
    'Recommended',
    1232,
    543
);


-- MODIFIER LE NOM D'UN STUDIO

UPDATE developers
SET developer = 'CD Projekt Red'
WHERE id = 1;


-- MODIFIER LE NOM D'UN STUDIO PAR UN EXISTANT

UPDATE games_developers
SET developer_id = 1
WHERE developer_id = 2;

DELETE FROM developers
WHERE id = 2;


-- MODIFIER LE PRIX D'UN JEU

UPDATE games
SET price = 59.99
WHERE id = 1;


-- MODIFIER LE RANG ET LE TYPE DE RANG D'UN JEU

UPDATE rankings
SET ranking_genre_id = 1,
    ranking_type_id = 3
WHERE game_id = 1;