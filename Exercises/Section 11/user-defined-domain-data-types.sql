-- CREATE DOMAIN data typev   

-- create varchar domain
CREATE DOMAIN addr VARCHAR(100) NOT NULL;

CREATE TABLE locations(
    address addr
);
INSERT INTO locations(address)
VALUES ('123 London');

SELECT * FROM locations;

-- create positive int domain
CREATE DOMAIN positive_numeric INT NOT NULL CHECK (VALUE > 0);

CREATE TABLE sample (
    sample_id SERIAL PRIMARY KEY,
    value_num positive_numeric
);

INSERT INTO sample(value_num) VALUES(10);

SELECT * FROM sample;

-- create us post code domain
CREATE DOMAIN us_post_code AS TEXT
CHECK (
    VALUE ~'\d{5}$'
    OR VALUE ~'^\D{5}-\d{4}$'
);


CREATE TABLE addresses (
    address_id SERIAL PRIMARY KEY,
    post_code us_post_code
);

INSERT INTO addresses(post_code)
VALUES ('10000');

-- proper email check custom data type

CREATE DOMAIN proper_email VARCHAR(150)
CHECK (Value ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');

CREATE TABLE client_names(
    client_id SERIAL PRIMARY KEY,
    email proper_email
);

INSERT INTO client_names(email)
VALUES ('Test@Test.com');


-- create an Enumeration type - set of values domain
CREATE DOMAIN valid_color VARCHAR(10)
CHECK (VALUE IN ('red', 'green', 'blue'));

CREATE TABLE colors(
    color valid_color
);

INSERT INTO colors(color) VALUES('red');
 
-- Get all domains in a schema
SELECT typname
FROM pg_catalog.pg_type
JOIN pg_catalog.pg_namespace
ON pg_namespace.oid = pg_type.typnamespace
WHERE typtype = 'd' and nspname = 'public'

-- DROP domain data type
DROP DOMAIN positive_numeric;
