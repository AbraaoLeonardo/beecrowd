CREATE TABLE products(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    amount INTEGER NOT NULL DEFAULT 0,
    price NUMERIC(10,2) NOT NULL DEFAULT 0.00    
);

INSERT INTO products(id, name, amount, price) 
VALUES
    (1, 'Two-door wardrobe', 100, 80),
    (2, 'Dining table', 1000, 560),
    (3, 'Towel holder', 10000, 5.50),
    (4, 'Computer desk', 350, 100),
    (5, 'Chair', 3000, 210.64),
    (6, 'Single bed', 750, 99);


SELECT id, name
FROM products
WHERE price > 100 OR price < 10;

DROP TABLE products;