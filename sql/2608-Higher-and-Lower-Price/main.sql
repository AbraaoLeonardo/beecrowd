CREATE TABLE products(
    id SMALLINT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    amount INTEGER NOT NULL DEFAULT 0,
    price NUMERIC(10,2) NOT NULL DEFAULT 0.00
);

DROP TABLE products;

INSERT INTO products (id, name, amount, price)
VALUES
    (1, 'Two-doors wardrobe', 100, 800),
    (2, 'Dining table', 1000, 560),
    (3, 'Towel holder', 10000, 25.50),
    (4, 'Computer desk', 350, 320.50),
    (5, 'Chair', 3000, 210.64),
    (6, 'Single bed', 750, 460);

SELECT MAX(price) as price, MIN(price) as price FROM products;