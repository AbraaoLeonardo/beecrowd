CREATE TABLE IF NOT EXISTS rentals(
    id SMALLINT PRIMARY KEY, 
    rentals_date DATE NOT NULL, 
    id_customers SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS customers(
    id SMALLINT PRIMARY KEY, 
    name VARCHAR(30) NOT NULL, 
    street VARCHAR(50) NOT NULL, 
    city VARCHAR(20) NOT NULL
);

ALTER TABLE rentals
ADD CONSTRAINT id_customers_fk FOREIGN KEY (id_customers) REFERENCES customers (id);

INSERT INTO rentals (id, rentals_date, id_customers) VALUES
(1, '2016-09-10', 3),
(2, '2016-02-09', 1),
(3, '2016-02-08', 4),
(4, '2016-02-09', 2),
(5, '2016-02-03', 6),
(6, '2016-04-04', 4);

INSERT INTO customers (id, name, street, city) VALUES
(1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
(2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
(3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
(4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
(5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
(6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');


SELECT c.name, r.rentals_date FROM customers c
JOIN rentals r ON r.id_customers = c.id
WHERE r.rentals_date BETWEEN '2016-09-01' AND '2016-09-30';

DROP TABLE rentals;
DROP TABLE customers;

