
CREATE TABLE candidate(
    id SMALLINT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE score(
    candidate_id SMALLINT REFERENCES candidate (id),
    math NUMERIC(10,2),
    specific NUMERIC(10,2),
    project_plan NUMERIC(10,2)
)

INSERT INTO candidate (id, name) VALUES
(1, 'Michael P Cannon'),
(2, 'Barbra J Cable'),
(3, 'Ronald D Jones'),
(4, 'Timothy K Fitzsimmons'),
(5, 'Ivory B Morrison'),
(6, 'Sheila R Denis'),
(7, 'Edward C Durgan'),
(8, 'William K Spencer'),
(9, 'Donna D Pursley'),
(10, 'Ann C Davis');

INSERT INTO score (candidate_id, math, specific, project_plan) VALUES
(1, 76, 58, 21),
(2, 4, 5, 22),
(3, 15, 59, 12),
(4, 41, 42, 99),
(5, 22, 90, 9),
(6, 82, 77, 15),
(7, 82, 99, 56),
(8, 11, 4, 22),
(9, 16, 29, 94),
(10, 1, 7, 59);

SELECT c.name, ROUND(((s.math*2 + s.project_plan*5 + s.specific * 3)/10),2) as avg FROM candidate c
LEFT JOIN score s ON c.id = s.candidate_id
ORDER BY avg DESC;

DROP TABLE score;
DROP TABLE candidate;