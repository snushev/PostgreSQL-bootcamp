-- select all records from a table
SELECT * FROM movies;

SELECT * FROM actors;

-- select explicit column names
SELECT 
	first_name,
	last_name
FROM
	actors;

SELECT
	movie_name,
	movie_lang
FROM
	movies;

-- select columns with alias name
SELECT 
	first_name AS "First Name"
FROM
	actors;

-- concatenate two COLUMNS
SELECT
	first_name || ' ' || last_name AS "Full Name"
FROM
	actors;

-- concatenate using CONCAT
SELECT
	CONCAT(first_name, ' ', last_name) AS full_name
FROM directors;

