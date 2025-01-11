CREATE TABLE IF NOT EXISTS customers(
    id SMALLINT PRIMARY KEY NOT NULL,
    name VARCHAR(20) NOT NULL,
    street VARCHAR(30) NOT NULL,
    city VARCHAR(20) NOT NULL
);

ALTER TABLE customers
ALTER COLUMN name TYPE VARCHAR(30)

INSERT INTO customers VALUES
    (1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
    (2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
    (3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
    (4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Uberlândia'),
    (5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
    (6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');


SELECT DISTINCT city FROM customers;

DROP TABLE customers;