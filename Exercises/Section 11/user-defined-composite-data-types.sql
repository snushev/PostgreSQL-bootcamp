-- Composite data types

-- create composite address data type
CREATE TYPE address AS (
    city VARCHAR(50),
    country VARCHAR(20)
);

CREATE TABLE companies(
    comp_id SERIAL PRIMARY KEY,
    address address
);

INSERT INTO companies(address)
VALUES 
(ROW('LONDON', 'UK')),
(ROW('New York', 'US'));

SELECT (address).country FROM companies;
SELECT (address).city FROM companies;

-- create composite 'inventory_item' data type
CREATE TYPE inventory_item AS(
    name VARCHAR(200),
    supplier_id INT,
    price NUMERIC
);

CREATE TABLE 
    inventory(
        inventory_id SERIAL PRIMARY KEY,
        item inventory_item
    );

INSERT INTO 
    inventory(item)
VALUES
    (ROW('pen', 20, 2.99)),
    (ROW('Car', 21, 4002.99)),
    (ROW('Bread', 7, 1.99));

SELECT 
    (item).name,
    (item).supplier_id,
    (item).price
FROM 
    inventory
WHERE 
    (item).price > 2;


-- create a currency ENUM data type
CREATE TYPE currency AS ENUM ('USD', 'EUR', 'GBP');

ALTER TYPE currency ADD VALUE 'CHF' AFTER 'EUR';

CREATE TABLE 
    stocks(
        stock_id SERIAL PRIMARY KEY,
        stock_currency currency
    );

INSERT INTO
    stocks(stock_currency)
VALUES
    ('USD'),
    ('CHF');

SELECT * FROM stocks;

-- drop type 
CREATE TYPE sample_type AS ENUM('ABC', '123');
DROP TYPE sample_type;
