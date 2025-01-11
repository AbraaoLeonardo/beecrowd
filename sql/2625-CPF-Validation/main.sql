CREATE TABLE IF NOT EXISTS customers(
    id SMALLINT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state CHAR(2) NOT NULL,
    credit_limit DECIMAL(10,2) DEFAULT 0.00 NOT NULL
);

CREATE TABLE IF NOT EXISTS natural_person(
    id_customers SMALLINT REFERENCES customers(id),
    cpf CHAR(14) NOT NULL 
);

INSERT INTO customers (id, name, street, city, state, credit_limit) VALUES
(1, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
(2, 'Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
(3, 'Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
(4, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
(5, 'Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
(6, 'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

INSERT INTO natural_person(id_customers, cpf) VALUES
(1, '26774287840'),
(2, '97918477200');

SELECT REGEXP_REPLACE(cpf, '(\d{3})(\d{3})(\d{3})(\d{2})', '\1.\2.\3-\4') from natural_person;

DROP TABLE natural_person;
DROP TABLE customers;
