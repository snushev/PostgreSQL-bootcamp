-- CHECK constraint
-- define CHECK for new tables

CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE CHECK (birth_date > '1900-01-01'),
    joined_date DATE CHECK (joined_date > birth_date),
    salary NUMERIC CHECK (salary > 0)
);

INSERT INTO 
    staff(
        first_name,
        last_name,
        birth_date,
        joined_date,
        salary
    )
VALUES
    ('Adam', 'King', '1999-01-01', '2020-05-05', 1000);

SELECT * FROM staff;

-- Define CHECK constraint for existing table
CREATE TABLE prices(
    price_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    price NUMERIC NOT NULL,
    discount NUMERIC NOT NULL,
    valid_from DATE NOT NULL
);

ALTER TABLE prices
ADD CONSTRAINT price_check
CHECK (
    price > 0
    AND
    discount >= 0
    AND 
    price > discount
);

INSERT INTO prices(
    product_id, price, discount, valid_from
)
VALUES 
    ('1', 100, 20, '2020-10-10');

-- Rename constraint
ALTER TABLE prices
RENAME CONSTRAINT price_check TO price_discount_check;

-- DROP constraint
ALTER TABLE prices
DROP CONSTRAINT price_discount_check;
