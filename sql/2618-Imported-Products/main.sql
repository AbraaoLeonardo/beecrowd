CREATE TABLE IF NOT EXISTS providers (
    id NUMERIC PRIMARY KEY,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    state CHAR(2)
);

CREATE TABLE IF NOT EXISTS products (
    id NUMERIC PRIMARY KEY,
    name VARCHAR(255),
    amount NUMERIC,
    price NUMERIC,
    id_providers NUMERIC REFERENCES providers(id)
);

CREATE TABLE IF NOT EXISTS categories(
    id NUMERIC PRIMARY KEY,
    name VARCHAR(50)
);


ALTER TABLE products
ADD COLUMN id_categories NUMERIC;


ALTER TABLE products
ADD CONSTRAINT id_categories_fk FOREIGN KEY (id_categories) REFERENCES categories (id)

INSERT INTO providers (id, name, street, city, state) VALUES
(1, 'Ajax SA', 'Presidente Castelo Branco', 'Porto Alegre', 'RS'),
(2, 'Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
(3, 'South Chairs', 'Av Moinho', 'Santa Maria', 'RS'),
(4, 'Elon Electro', 'Apolo', 'São Paulo', 'SP'),
(5, 'Mike Electro', 'Pedro da Cunha', 'Curitiba', 'PR');

INSERT INTO categories (id, name) VALUES
(1, 'Super Luxury'),
(2, 'Imported'),
(3, 'Tech'),
(4, 'Vintage'),
(5, 'Supreme');

INSERT INTO products (id, name, amount, price, id_providers, id_categories) VALUES
(1, 'Blue Chair', 30, 300.00, 5, 5),
(2, 'Red Chair', 50, 2150.00, 2, 1),
(3, 'Disney Wardrobe', 400, 829.50, 4, 1),
(4, 'Blue Toaster', 20, 9.90, 3, 1),
(5, 'TV', 30, 3000.25, 2, 2);

SELECT prod.name as prod_name, prov.name as provider_name, cat.name as categorie_name FROM providers prov
LEFT JOIN products prod ON prod.id_providers = prov.id
INNER JOIN categories cat ON cat.id = prod.id_categories
WHERE prov.name = 'Sansul SA' AND cat.name = 'Imported';

DROP TABLE products;
DROP TABLE providers;
DROP TABLE categories;