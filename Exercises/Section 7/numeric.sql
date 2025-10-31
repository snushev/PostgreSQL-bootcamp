-- Data types Numeric

-- SERIAL

-- create db with serial data type
CREATE TABLE table_serial(
    product_id SERIAL,
    product_name VARCHAR(100)
);

-- insert data
INSERT INTO 
    table_serial(product_name)
VALUES
    ('pen'),
    ('pencil'),
    ('rubber')

SELECT * FROM table_serial;

-- Numeric, Decimal

-- create table
CREATE TABLE table_numbers(
    col_numeric NUMERIC(20,5),
    col_real REAL,
    col_double DOUBLE PRECISION
);

-- insert data
INSERT INTO 
    table_numbers(
        col_numeric,
        col_real,
        col_double
    )
VALUES
    (.9, .9, .9),
    (3.13579, 3.13579, 3.13579),
    (4.1357987654, 4.1357987654, 4.1357987654);

SELECT * FROM table_numbers;
