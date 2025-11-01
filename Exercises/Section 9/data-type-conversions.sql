-- Convert data types

SELECT * FROM movies
WHERE movie_id = 1;

SELECT * FROM movies
WHERE movie_id = '1'; -- Postgres automatically do the conversion

-- using CAST

-- string to integer
SELECT
    CAST ('10' AS INTEGER);

-- string to date
SELECT
    CAST('2020-01-01' AS DATE),
    CAST('10-MAY-2020' AS DATE);

-- string to boolean
SELECT
    CAST('true' AS BOOLEAN),
    CAST('false' AS BOOLEAN),
    CAST('y' AS BOOLEAN),
    CAST('1' AS BOOLEAN),
    CAST('F' AS BOOLEAN);

-- string to double
SELECT
    CAST ('14.7888' AS DOUBLE PRECISION);

-- use :: for convert directly

SELECT
    '10'::INTEGER,
    '2020-05-05'::DATE,
    1::BOOLEAN;

-- string to timestamp
SELECT '2020-02-20 10:30:25.456'::TIMESTAMP;

-- string to timestamptz
SELECT '2020-02-20 10:30:25.456'::TIMESTAMPTZ;

-- string to interval
SELECT
    '100 minute'::interval,
    '4 hour'::interval,
    '1 day'::interval,
    '3 week'::interval,
    '5 month'::interval;

-- round with numeric
SELECT ROUND(2,4);
SELECT ROUND(CAST(10 AS NUMERIC), 4) AS result;

-- cast with text
SELECT SUBSTR('123456', 2);

-- table data conversion

-- create table
CREATE TABLE ratings(
    rating_id SERIAL PRIMARY KEY,
    rating VARCHAR(1) NOT NULL
);

-- add data
INSERT INTO ratings(rating)
VALUES
    ('A'),
    ('B'),
    ('C'),
    ('D');

-- we want to change ratings to be numeric
INSERT INTO ratings(rating)
VALUES
    (1),
    (2),
    (3),
    (4);

SELECT
    rating_id,
    CASE 
        WHEN rating~E'\\d+$' THEN 
            CAST(rating AS INTEGER)
        ELSE 
        0
    END AS rating
FROM 
    ratings;
