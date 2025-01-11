CREATE TABLE IF NOT EXISTS lawyers(
    register INTEGER PRIMARY KEY,
    name VARCHAR(30),
    customers_number INTEGER
);

INSERT INTO lawyers(register, name, customers_number) VALUES
(1648, 'Marty M. Harrison', 5),
(2427, 'Jonathan J. Blevins', 15),
(3365, 'Chelsey D. Sanders', 20),
(4153, 'Dorothy W. Ford', 16),
(5525, 'Penny J. Cormier', 6);

-- WITH CTE (Wrong answear) Not ordened, with use ordenation will cause a presentation error
WITH min_max AS
(SELECT name, customers_number 
FROM lawyers 
WHERE customers_number = (SELECT MAX(customers_number) FROM lawyers) 
OR customers_number = (SELECT MIN(customers_number) FROM lawyers)
ORDER BY customers_number DESC),
average AS
(SELECT 'AVERAGE' as name, ROUND(AVG(customers_number)) as customers_number FROM lawyers)

SELECT name, customers_number FROM min_max
UNION ALL
SELECT name, customers_number FROM average;


-- With one only UNION, the same problem as CTE will occur.
SELECT name, customers_number 
FROM lawyers 
WHERE customers_number = (SELECT MAX(customers_number) FROM lawyers) 
OR customers_number = (SELECT MIN(customers_number) FROM lawyers)
ORDER BY customers_number DESC
UNION ALL
SELECT 'AVERAGE', CAST(AVG(customers_number) AS INTEGER) FROM lawyers


-- WIth two union, i can specify the order. So this solve the problem.
SELECT name, customers_number
FROM lawyers
WHERE customers_number = (SELECT MAX(customers_number) FROM lawyers)
UNION ALL
SELECT name, customers_number
FROM lawyers
WHERE customers_number = (SELECT MIN(customers_number) FROM lawyers)
UNION ALL
SELECT 'Average', ROUND(AVG(customers_number))::integer
FROM lawyers;

DROP TABLE lawyers;



