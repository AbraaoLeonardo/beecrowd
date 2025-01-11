CREATE TABLE IF NOT EXISTS movies(
    id SMALLINT PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    id_prices DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS prices(
    id SMALLINT PRIMARY KEY,
    categorie VARCHAR(15) NOT NULL,
    value DECIMAL(10,2) NOT NULL DEFAULT 0.00
);

ALTER TABLE movies
ALTER COLUMN id_prices TYPE SMALLINT;

ALTER TABLE movies
ADD CONSTRAINT id_prices_fk FOREIGN KEY (id_prices) REFERENCES prices (id);

ALTER TABLE movies
ALTER COLUMN name TYPE VARCHAR(30)

INSERT INTO prices (id, categorie, value) VALUES
    (1, 'Releases', 3.50),
    (2, 'Bronze Seal', 2.00),
    (3, 'Silver Seal', 2.50),
    (4, 'Gold Seal', 3.00),
    (5, 'Promotion', 1.50);

INSERT INTO movies (id, name, id_prices) VALUES
    (1, 'Batman', 3),
    (2, 'The Battle of the Dark River', 3),
    (3, 'White Duck', 5),
    (4, 'Breaking Barriers', 4),
    (5, 'The Two Hours', 2);

SELECT movies.id, movies.name FROM movies
JOIN prices ON prices.id = movies.id_prices
WHERE prices.value < 2.00;

DROP TABLE movies;
DROP TABLE prices;