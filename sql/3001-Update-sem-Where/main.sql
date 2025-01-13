CREATE TABLE products(
    id NUMERIC PRIMARY KEY,
    name VARCHAR(50),
    type CHAR(1),
    price NUMERIC(10,2)
);

INSERT INTO products(id,name,type,price) VALUES
(1,'Monitor','B',0),
(2,'Headset','A',0),
(3,'PC Case','A',0),
(4,'Computer Desk','C',0),
(5,'Gaming Chair','C',0),
(6,'Mouse','A',0);

SELECT 
    name,
    CASE
        WHEN type = 'A' THEN 20.0
        WHEN type = 'B' THEN 70.0
        WHEN type = 'C' THEN 530.5
    END as price
FROM products
ORDER BY type ASC,id DESC;

DROP TABLE followers;
DROP TABLE nodes;
DROP TABLE products;
DROP TABLE users;