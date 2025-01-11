CREATE TABLE IF NOT EXISTS cities(
    id SMALLINT PRIMARY KEY,
    city_name VARCHAR(20),
    population NUMERIC
);

INSERT INTO cities (id, city_name, population)
VALUES
    (1, 'São Paulo', 12396372),
    (2, 'Rio de Janeiro', 6775561),
    (3, 'Brasília', 3094325),
    (4, 'Salvador', 2900319),
    (5, 'Fortaleza', 2703391),
    (6, 'Belo Horizonte', 2530701),
    (7, 'Manaus', 2255903),
    (8, 'Curitiba', 1963726),
    (9, 'Recife', 1661017),
    (10, 'Goiânia', 1555626),
    (11, 'Belém', 1506420),
    (12, 'Porto Alegre', 1492530);


-- My solution with CTE
WITH hightest as (
    SELECT city_name, population 
    FROM cities
    ORDER BY population DESC
    LIMIT 2
),
lowest AS (
    SELECT city_name, population 
    FROM cities
    ORDER BY population ASC
    LIMIT 2
), second_hightest as (
    SELECT city_name, population 
    FROM hightest
    ORDER BY population ASC
    LIMIT 1
),
 second_lowest AS (
    SELECT city_name, population 
    FROM lowest
    ORDER BY population DESC
    LIMIT 1
)

SELECT * FROM second_hightest
UNION ALL
SELECT * FROM second_lowest

-- ChatGPT solutions.

SELECT city_name, population FROM cities
WHERE population = 
    (SELECT MAX(population) 
     FROM cities 
     WHERE population < 
     (SELECT MAX(population) FROM cities))
UNION
SELECT city_name, population FROM cities
WHERE population = 
    (SELECT MIN(population) 
     FROM cities 
     WHERE population > 
        (SELECT MIN(population) FROM cities));