-- hstore data type

-- create extention for hstore
CREATE EXTENSION IF NOT EXISTS hstore;

-- create sample table
CREATE TABLE table_hstore(
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    info hstore
);

-- insert data
INSERT INTO
    table_hstore(title, info)
VALUES
    ('TITLE 1', '
        "publisher" => "ABC Publisher",
        "paper_cost" => "10.00",
        "e_cost" => "5.85"');

SELECT * FROM table_hstore;

SELECT info -> 'publisher' FROM table_hstore;
