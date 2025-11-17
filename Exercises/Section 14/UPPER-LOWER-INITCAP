-- UPPER, LOWER, INITCAP

SELECT 
    UPPER('amazing postgresql'),
    INITCAP('amazing postgresql');

SELECT
    UPPER(first_name),
    UPPER(last_name)
FROM
    directors;

SELECT LOWER('AmAzInG PoStGrEsQl');

SELECT INITCAP('the world is changing with a lightning speed');

SELECT
    INITCAP(
        CONCAT(first_name, ' ', last_name)
    ) AS full_name
FROM 
    directors
ORDER BY
    first_name;
