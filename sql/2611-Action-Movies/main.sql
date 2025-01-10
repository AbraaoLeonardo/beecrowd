CREATE TABLE movies(
    id INTEGER PRIMARY KEY,	
    name VARCHAR(20) NOT NULL,
    id_genres SMALLINT NOT NULL
);

CREATE TABLE genres(
    id SMALLINT PRIMARY KEY,
    description VARCHAR(15) NOT NULL
);

ALTER TABLE movies
ALTER COLUMN name TYPE VARCHAR(30);

INSERT INTO movies (id, name, id_genres) VALUES
(1, 'Batman', 3),
(2, 'The Battle of the Dark River', 3),
(3, 'White Duck', 1),
(4, 'Breaking Barriers', 4),
(5, 'The Two Hours', 2);

INSERT INTO genres (id, description) VALUES
(1, 'Animation'),
(2, 'Horror'),
(3, 'Action'),
(4, 'Drama'),
(5, 'Comedy');

SELECT movies.id, movies.name from movies
JOIN genres ON movies.id_genres = genres.id
WHERE genres.description = 'Action';


DROP TABLE movies;
DROP TABLE genres;