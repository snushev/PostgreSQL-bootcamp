-- Data types CHAR, VARCHAR, TEXT

-- CHAR 
SELECT 
    CAST('John' AS CHAR(10)) AS "Name",
    'TRY THIS LONG TEXT'::CHAR(10) AS "Text";

-- VARCHAR
SELECT
    'James'::VARCHAR(10) AS "Name",
    'Try long text'::VARCHAR(10) as "Text";

-- TEXT
SELECT
    'Bacon ipsum dolor amet short ribs brisket venison, tri-tip pork chop turducken ribeye pastrami porchetta. Pork belly alcatra ground round bresaola biltong pork chop spare ribs.'::TEXT as text;

-- create table
CREATE TABLE table_characters(
    col_char CHAR(10),
    col_varchar VARCHAR(10),
    col_text TEXT
);

-- insert data
INSERT INTO
    table_characters(col_char, col_varchar, col_text)
VALUES 
    ('ABC', 'ABC', 'ABC'),
    ('xyz', 'xyz', 'xyz');

SELECT * FROM table_characters;
