CREATE TABLE IF NOT EXISTS value_table(
    amount INT
);
INSERT INTO value_table(amount) VALUES
(4),
(6),
(7),
(1),
(1),
(2),
(3),
(2),
(3),
(1),
(5),
(6),
(1),
(7),
(8),
(9),
(10),
(11),
(12),
(4),
(5),
(5),
(3),
(6),
(2),
(2),
(1);

WITH contagem AS(
    SELECT amount,
        COUNT(amount) as frequence
    FROM value_table
    GROUP BY amount
)
SELECT amount FROM contagem
ORDER BY frequence DESC
LIMIT 1;