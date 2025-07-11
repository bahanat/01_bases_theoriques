CREATE TABLE games (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    release_date DATE,
    link VARCHAR(255),
    short_desc TEXT,
    long_desc TEXT,
    price FLOAT,
    number_of_english_reviews INT,
    number_of_reviews_from_purchased_people VARCHAR(255),
    overall_player_rating VARCHAR(50)
);

CREATE TABLE genres (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    genre VARCHAR(100)
);

CREATE TABLE games_genres (
    game_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (game_id, genre_id),
    FOREIGN KEY (game_id) REFERENCES games(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);

CREATE TABLE developers (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    developer VARCHAR(255)
);

CREATE TABLE games_developers (
    game_id INT NOT NULL,
    developer_id INT NOT NULL,
    PRIMARY KEY (game_id, developer_id),
    FOREIGN KEY (game_id) REFERENCES games(id),
    FOREIGN KEY (developer_id) REFERENCES developers(id)
);

CREATE TABLE publishers (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    publisher VARCHAR(255)
);

CREATE TABLE games_publishers (
    game_id INT NOT NULL,
    publisher_id INT NOT NULL,
    PRIMARY KEY (game_id, publisher_id),
    FOREIGN KEY (game_id) REFERENCES games(id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);

CREATE TABLE ranking_type (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(100)
);

CREATE TABLE rankings (
    game_id INT NOT NULL,
    genre_id INT NOT NULL,
    ranking_type_id INT NOT NULL,
    ranking INT,
    PRIMARY KEY (game_id, genre_id, ranking_type_id),
    FOREIGN KEY (game_id) REFERENCES games(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id),
    FOREIGN KEY (ranking_type_id) REFERENCES ranking_type(id)
);

CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255)
);

CREATE TABLE reviews (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    game_id INT NOT NULL,
    user_id INT NOT NULL,
    hours_played FLOAT NOT NULL,
    publication_date DATE,
    review TEXT,
    recommandation VARCHAR(50),
    helpful BIGINT,
    funny BIGINT,
    FOREIGN KEY (game_id) REFERENCES games(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE specs (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE games_min_specs (
    game_id INT NOT NULL,
    spec_id INT NOT NULL,
    spec_value VARCHAR(255),
    PRIMARY KEY (game_id, spec_id),
    FOREIGN KEY (game_id) REFERENCES games(id),
    FOREIGN KEY (spec_id) REFERENCES specs(id)
);

CREATE TABLE games_rec_specs (
    game_id INT NOT NULL,
    spec_id INT NOT NULL,
    spec_value VARCHAR(255),
    PRIMARY KEY (game_id, spec_id),
    FOREIGN KEY (game_id) REFERENCES games(id),
    FOREIGN KEY (spec_id) REFERENCES specs(id)
);