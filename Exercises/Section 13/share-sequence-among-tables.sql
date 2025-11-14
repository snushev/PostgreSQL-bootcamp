-- share sequence among tables
CREATE SEQUENCE common_fruit_seq START WITH 100;

CREATE TABLE apples(
    fruit_id INT DEFAULT nextval('common_fruit_seq') NOT NULL,
    fruit_name VARCHAR(50)
);

CREATE TABLE mangos(
    fruit_id INT DEFAULT nextval('common_fruit_seq') NOT NULL,
    fruit_name VARCHAR(50)
);

INSERT INTO apples(fruit_name)
VALUES ('big apple');

SELECT * FROM apples;

INSERT INTO mangos(fruit_name)
VALUES ('big mango');

SELECT * FROM mangos;
