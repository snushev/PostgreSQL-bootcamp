-- LEFT and RIGHT functions

SELECT LEFT('ABCD', 1);

SELECT LEFT('ABCD', 10);

SELECT LEFT('ABCD', -1);

SELECT
    LEFT(first_name, 1) AS initial
FROM
    directors
ORDER BY 1;

SELECT
    LEFT(first_name, 1) AS initial,
    COUNT(*) as total_initials
FROM
    directors
GROUP BY initial
ORDER BY initial;

SELECT
    movie_name,
    LEFT(movie_name, 6)
FROM movies;

-- RIGHT

SELECT RIGHT('ABCD', 1);

SELECT RIGHT('ABCD', -1);

SELECT last_name
FROM directors
WHERE RIGHT(last_name, 2) = 'on';
