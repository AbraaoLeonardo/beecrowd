CREATE TABLE teams(
    id SMALLINT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS matches(
    id SMALLINT PRIMARY KEY,
    team_1 SMALLINT REFERENCES teams(id),
    team_2 SMALLINT REFERENCES teams(id),
    team_1_goals SMALLINT,
    team_2_goals SMALLINT
)

INSERT INTO teams(id,name) VALUES
(1,'CEARA'),
(2,'FORTALEZA'),
(3,'GUARANY DE SOBRAL'),
(4,'FLORESTA');

INSERT INTO matches(id, team_1, team_2, team_1_goals, team_2_goals) VALUES
(1, 4, 1, 0, 4),
(2, 3, 2, 0, 1),
(3, 1, 3, 3, 0),
(4, 3, 4, 0, 1),
(5, 1, 2, 0, 0),
(6, 2, 4, 2, 1);


WITH cte AS(
    SELECT team_1 as team, team_1_goals AS team_goals, team_2_goals AS opponent_goals FROM matches
    UNION ALL
    SELECT team_2 as team, team_2_goals AS team_goals, team_1_goals AS opponent_goals FROM matches
)

SELECT 
    DISTINCT(t.name),
    COUNT(*),
    SUM (CASE WHEN c.team_goals > c.opponent_goals THEN 1 ELSE 0 END) AS victories,
    SUM (CASE WHEN c.team_goals < c.opponent_goals THEN 1 ELSE 0 END) AS defeats,
    SUM (CASE WHEN c.team_goals = c.opponent_goals THEN 1 ELSE 0 END) AS draw,
    SUM (CASE WHEN c.team_goals > c.opponent_goals THEN 1 ELSE 0 END) * 3 + 
    SUM (CASE WHEN c.team_goals = c.opponent_goals THEN 1 ELSE 0 END ) as points
FROM cte c
JOIN teams t ON t.id = c.team
GROUP BY t.name
ORDER BY 
    SUM (CASE WHEN c.team_goals > c.opponent_goals THEN 1 ELSE 0 END) * 3 + 
    SUM (CASE WHEN c.team_goals = c.opponent_goals THEN 1 ELSE 0 END ) DESC;