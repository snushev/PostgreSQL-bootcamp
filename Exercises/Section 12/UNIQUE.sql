-- UNIQUE constraint

CREATE TABLE table_emails(
    id SERIAL PRIMARY KEY,
    emails TEXT UNIQUE
);

INSERT INTO table_emails(emails)
VALUES
    ('SDsa@mail.test'),
    ('test@test.ts'),
    ('e@mai.ll');

INSERT INTO table_emails(emails)
VALUES
    ('SDsa@mail.test'); -- gives error already exist

-- create UNIUQUE key on multiple columns
CREATE TABLE table_products
(
    id SERIAL PRIMARY KEY,
    product_code VARCHAR(10),
    product_name TEXT
);

ALTER TABLE table_products
ADD CONSTRAINT unique_product_code UNIQUE(product_code, product_name);

INSERT INTO table_products(
    product_code,
    product_name
)
VALUES
    ('A', 'apple'),
    ('B', 'banana');

INSERT INTO table_products(
    product_code,
    product_name
)
VALUES
    ('B', 'banana'); -- gives error
