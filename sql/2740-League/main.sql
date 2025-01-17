CREATE TABLE league(
    position SMALLINT PRIMARY KEY,
    team VARCHAR(50)
);

INSERT INTO league(position, team) VALUES
(1, 'The Quack Bats'),
(2, 'The Responsible Hornets'),
(3, 'The Bawdy Dolphins'),
(4, 'The Abstracted Sharks'),
(5, 'The Nervous Zebras'),
(6, 'The Oafish Owls'),
(7, 'The Unequaled Bison'),
(8, 'The Keen Kangaroos'),
(9, 'The Left Nightingales'),
(10, 'The Terrific Elks'),
(11, 'The Lumpy Frogs'),
(12, 'The Swift Buffalo'),
(13, 'The Big Chargers'),
(14, 'The Rough Robins'),
(15, 'The Silver Crocs');

-- With CTE, Error 10%
WITH podium AS(
    SELECT 'Podium: ' || team AS name
    FROM league
    ORDER BY position ASC
    LIMIT 3
),
demoted AS(
    SELECT 'Demoted: ' || team AS name
    FROM league
    ORDER BY position DESC
    LIMIT 2
)
SELECT name FROM podium
UNION
SELECT name FROM demoted;

-- With WHERE and subquery. Accepted
SELECT 'Podium: ' || team AS name FROM league
WHERE position IN (SELECT position FROM league ORDER BY position ASC LIMIT 3)
UNION ALL
SELECT 'Demoted: ' || team AS name FROM league
WHERE position IN (SELECT position FROM league ORDER BY position DESC LIMIT 2)

DROP TABLE IF EXISTS league;