-- create sample database
CREATE TABLE 
    persons(
        person_id SERIAL PRIMARY KEY,
        first_name VARCHAR(20) NOT NULL,
        last_name VARCHAR(20) NOT NULL
    );

-- altering table
ALTER TABLE persons
ADD COLUMN age INT NOT NULL;

SELECT * FROM persons;

ALTER TABLE persons
ADD COLUMN nationality VARCHAR(20) NOT NULL,
ADD COLUMN email VARCHAR(100) UNIQUE

--rename table
ALTER TABLE persons
RENAME TO users;

-- rename column
ALTER TABLE users
RENAME COLUMN age TO person_age;

-- drop a column
ALTER TABLE users
DROP COLUMN person_age;

-- change data type of a column
ALTER TABLE users
ALTER COLUMN age TYPE int;
-- USING age::INTEGER if it is VARCHAR

-- set default values of a column
ALTER TABLE users
ADD COLUMN is_enable VARCHAR(1);

-- change default value
ALTER TABLE users
ALTER COLUMN is_enable SET DEFAULT 'Y';

-- add some data
INSERT INTO users
    (
        first_name,
        last_name,
        nationality,
        age
    )
VALUES
    ('John', 'Doe', 'american', 35)

-- Add constraints

-- create unique constraint to a column
CREATE TABLE web_links(
    link_id SERIAL PRIMARY KEY,
    link_url VARCHAR(255) NOT NULL,
    link_target VARCHAR(20)
);

-- add some data
INSERT INTO 
    web_links(link_url, link_target)
VALUES 
    ('https://www.google.com', '_blank');

-- alter table to add constraint
ALTER TABLE 
    web_links
ADD CONSTRAINT 
    unique_web_url UNIQUE(link_url);

-- set a column to accept only defined values
ALTER TABLE web_links
ADD COLUMN
    is_enable VARCHAR(3);

INSERT INTO 
    web_links(link_url, link_target, is_enable)
VALUES
    ('https://www.netflix.com', '_blank', 'N');

ALTER TABLE web_links
ADD CHECK(is_enable IN ('Y', 'N'));

SELECT * FROM web_links;
