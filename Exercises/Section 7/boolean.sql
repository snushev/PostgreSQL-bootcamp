-- Data types - Boolean

-- create a sample table
CREATE TABLE table_boolean(
    product_id SERIAL PRIMARY KEY,
    is_available BOOLEAN NOT NULL
);

-- insert some data
INSERT INTO 
    table_boolean(is_available) 
VALUES
    (TRUE),
    ('false'),
    ('yes'),
    ('no'),
    (FALSE),
    ('true'),
    ('1'),
    ('0');

SELECT * FROM table_boolean
WHERE   
    is_available = TRUE;

SELECT * FROM table_boolean
WHERE   
     NOT is_available;

-- set default values
ALTER TABLE table_boolean
ALTER COLUMN is_available
SET DEFAULT FALSE;

-- insert new values
INSERT INTO
    table_boolean(product_id)
VALUES
    (13),
    (14);
