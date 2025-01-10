CREATE TABLE products(
    id INTEGER PRIMARY KEY,	
    name VARCHAR(20) NOT NULL,
    amount SMALLINT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    id_categories INTEGER NOT NULL
);

CREATE TABLE categories(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL
);

INSERT INTO categories (id, name)
VALUES
    (1, 'wood'),
    (2, 'luxury'),
    (3, 'vintage'),
    (4, 'modern'),
    (5, 'super luxury');

ALTER TABLE products
ADD CONSTRAINT id_categories_fk FOREIGN KEY (id_categories) REFERENCES categories (id);

INSERT INTO products(id, name, amount, price, id_categories)
VALUES
    (1, 'Two-doors wardrobe', 100, 800, 1),
    (2, 'Dining table', 1000, 560, 3),
    (3, 'Towel holder', 10000, 25.50, 4),
    (4, 'Computer desk', 350, 320.50, 2),
    (5, 'Chair', 3000, 210.64, 4),
    (6, 'Single bed', 750, 460, 1);

SELECT cat.name, sum(prod.amount)
FROM categories cat
JOIN products prod
ON cat.id = prod.id_categories
GROUP BY cat.name;

DROP TABLE products;
DROP TABLE categories;