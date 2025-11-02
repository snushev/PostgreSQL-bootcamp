-- Conversion functions

-- TO_CHAR() 

-- integer to string
SELECT
    TO_CHAR(
        100870,
        '9,99999'
    );

-- date to string
SELECT
    release_date,
    TO_CHAR(release_date, 'DD-MM-YYYY'),
    TO_CHAR(release_date, 'Dy, DD, MM, YYYY')
FROM
    movies;

-- timestamp 
SELECT
    TO_CHAR(
        TIMESTAMP '2020-01-01 10:30:59',
        'HH24:MI:SS'
    );

-- adding $ symbol
SELECT  
    movie_id,
    revenues_domestic,
    TO_CHAR(revenues_domestic, '$99999D99')
FROM movies_revenues;

-- TO_NUMBER()

-- convert string to a number
SELECT 
    to_number(
        '1240.89',
        '9999.99'
    );

SELECT
    TO_NUMBER(
        '124125.78-',
        '999999.99S'
    );

SELECT
    TO_NUMBER(
        '$1420.64',
        'L9999.99'
    );


-- TO_DATE() string to date
SELECT TO_DATE('2020/01/01', 
               'YYYY/MM/DD');

SELECT TO_DATE('021299', 
               'DDMMYY');

SELECT TO_DATE('March 07, 2019', 
               'Month DD, YYYY');

-- TO_TIMESTAMP() string to timestamp
SELECT TO_TIMESTAMP(
    '2020-10-10 10:30:25',
    'YYYY-MM-DD HH:MI:SS'
);

SELECT 
    TO_TIMESTAMP(
        '2020 MAY 10',
        'YYYY MON HH'
    );
