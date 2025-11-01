-- uuid data type

-- we use third party algorithm uuid-ossp
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- generate a simple UUID
SELECT uuid_generate_v1();
SELECT uuid_generate_v4();

-- create table
CREATE TABLE 
    table_uuid(
        product_id UUID DEFAULT uuid_generate_v1(),
        product_name VARCHAR(100) NOT NULL
    );

-- insert data
INSERT INTO 
    table_uuid(product_name)
VALUES
    ('ABC'),
    ('Test'),
    ('EFG');

SELECT * FROM table_uuid;
