-- Array data type

-- create table
CREATE TABLE table_array(
    id SERIAL,
    name VARCHAR(100),
    phones text [] -- array
);

-- insert data
INSERT INTO 
    table_array(
        name,
        phones
    )
VALUES
    ('Adam', ARRAY ['(801)-123-4567', '(819)-555-2222']),
    ('Linda', ARRAY ['(201)-123-4567', '(214)-333-4141']);

-- select all elements
SELECT * FROM table_array;

-- select exact element
SELECT
    name,
    phones[1]
FROM 
    table_array
LIMIT 1;
