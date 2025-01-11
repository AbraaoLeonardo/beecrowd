CREATE TABLE IF NOT EXISTS customers(
    id SMALLINT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    street VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS locations(
    id SMALLINT PRIMARY KEY,
    locations_date DATE NOT NULL,
    id_customers SMALLINT NOT NULL
);

ALTER TABLE locations
ADD CONSTRAINT id_customers_fk FOREIGN KEY (id_customers) REFERENCES customers (id);

INSERT INTO customers (id, name, street, city) VALUES
    (1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
    (2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
    (3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
    (4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
    (5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
    (6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');

INSERT INTO locations(id, locations_date, id_customers) VALUES
    (1,'2016-10-09',3),
    (2,'2016-09-02',1),
    (3,'2016-08-02',4),
    (4,'2016-09-02',2),
    (5,'2016-03-02',6),
    (6,'2016-04-04',4);

SELECT c.id, c.name FROM customers c
JOIN locations l ON c.id = l.id_customers
WHERE c.id NOT IN l.id_customers;

SELECT c.id, c.name FROM customers c
LEFT JOIN locations l ON c.id = l.id_customers
WHERE l.locations_date IS NULL
ORDER BY c.id;

DROP TABLE locations;
DROP TABLE customers;