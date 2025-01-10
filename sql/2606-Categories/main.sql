CREATE TABLE products(
    id SMALLINT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    amount INTEGER NOT NULL DEFAULT 0,
    price DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    id_categories SMALLINT NOT NULL
);

CREATE TABLE categories(
    id SMALLINT PRIMARY KEY,
    name VARCHAR(20) NOT NULL
);

ALTER TABLE products
ADD CONSTRAINT categories_fk FOREIGN KEY (id_categories) REFERENCES categories (id);

INSERT INTO categories (id, name)
VALUES
    (1, 'old stock'),
    (2, 'new stock'),
    (3, 'modern'),
    (4, 'commercial'),
    (5, 'recyclable'),
    (6, 'executive'),
    (7, 'superior'),
    (8, 'wood'),
    (9, 'super luxury'),
    (10, 'vintage');

INSERT INTO products (id, name, amount, price, id_categories)
VALUES
    (1, 'Lampshade', 100, 800, 4),
    (2, 'Table for painting', 1000, 560, 9),
    (3, 'Notebook desk', 10000, 25.50, 9),
    (4, 'Computer desk', 350, 320.50, 6),
    (5, 'Chair', 3000, 210.64, 9),
    (6, 'Home alarm', 750, 460, 4);

SELECT prod.id, prod.name
FROM products prod
JOIN categories cat
ON cat.id = prod.id_categories
WHERE cat.name LIKE 'super%';

DROP TABLE products;
DROP TABLE categories;