CREATE TABLE IF NOT EXISTS dimensions(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS life_registry(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    omega NUMERIC(10,2),
    dimensions_id INTEGER
);

ALTER TABLE life_registry
ADD CONSTRAINT dimensions_id_fk FOREIGN KEY (dimensions_id) REFERENCES dimensions (id);

INSERT INTO dimensions(id, name) VALUES
(1, 'C774'),
(2, 'C784'),
(3, 'C794'),
(4, 'C824'),
(5, 'C875');

INSERT INTO life_registry(id, name, omega, dimensions_id) VALUES
(1, 'Richard Postman', 5.6, 2),
(2, 'Simple Jelly', 1.4, 1),
(3, 'Richard Gran Master', 2.5,1),
(4, 'Richard Turing', 6.4, 4),
(5, 'Richard Strall', 1.0, 3);

SELECT l.name, ROUND(l.omega * 1.618,3) as "The N Factor" FROM life_registry l
LEFT JOIN dimensions d ON d.id = l.dimensions_id
WHERE d.name IN ('C875', 'C774') AND l.name LIKE ('%Richard%')
ORDER BY l.omega;

DROP TABLE life_registry;
DROP TABLE dimensions;
