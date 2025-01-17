CREATE TABLE IF NOT EXISTS customers(
    id NUMERIC PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state CHAR(2) NOT NULL,
    credit_limit DECIMAL(10,2) DEFAULT 0.00 NOT NULL
);

CREATE TABLE IF NOT EXISTS legal_person(
    id_customers NUMERIC REFERENCES customers(id),
    cnpj CHAR(18) NOT NULL,
    contact VARCHAR(15) NOT NULL
);

INSERT INTO customers (id, name, street, city, state, credit_limit) VALUES
(1, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
(2, 'Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
(3, 'Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
(4, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
(5, 'Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
(6, 'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

INSERT INTO legal_person (id_customers, cnpj, contact) VALUES
(4, '85883842000191', '99767-0562'),
(5, '47773848000117', '99100-8965');

SELECT customers.name FROM customers
RIGHT JOIN legal_person ON customers.id = legal_person.id_customers;

DROP TABLE legal_person;
DROP TABLE customers;