CREATE TABLE users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50)
);

CREATE TABLE packages(
    id_package NUMERIC PRIMARY KEY,
    id_user_sender INTEGER REFERENCES users(id),
    id_user_receiver INTEGER REFERENCES users(id),
    color VARCHAR(50),
    year INTEGER
);

INSERT INTO users(id,name,address) VALUES
(1,'Edgar Codd','England'),
(2,'Peter Chen','Taiwan'),
(3,'Jim Gray','United States'),
(4,'Elizabeth ONeil','United States');

INSERT INTO packages(id_package,id_user_sender,id_user_receiver,color,year) VALUES
(1,1,2,'blue',2015),
(2,1,3,'blue',2019),
(3,2,4,'red',2019),
(4,2,1,'green',2018),
(5,3,4,'red',2015),
(6,4,3,'blue',2019);

SELECT p.year, u.name, u.name FROM packages p
JOIN users u ON u.id = p.id_user_sender
WHERE p.color = 'blue'
OR p.year = 2015 
AND u.address <> 'Taiwan';