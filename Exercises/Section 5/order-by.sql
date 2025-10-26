-- order by single column
SELECT 
	*
FROM
	movies
ORDER BY
	release_date ASC;


SELECT 
	*
FROM
	movies
ORDER BY
	release_date DESC;

-- order by multiple columns
SELECT 
	*
FROM
	movies
ORDER BY
	movie_name ASC,
	release_date DESC;

-- order by alias column name
SELECT
	first_name, 
	last_name AS family
FROM 
	actors
ORDER BY
	family;

-- length and sort by length
SELECT 
	first_name,
	LENGTH(first_name) AS len
FROM
	actors
WHERE 
	first_name IS NOT NULL
ORDER BY
	len DESC;

-- order by column number instead of column name
SELECT
	first_name,
	last_name,
	date_of_birth
FROM
	actors
ORDER BY
	1 ASC, -- first_name
	3 DESC; -- date_of_birgh

-- order NULLS FIRST / NULLS LAST
SELECT 
	first_name
FROM
	actors
ORDER BY
	first_name ASC NULLS FIRST;

-- select distinct values
SELECT
	DISTINCT movie_lang
FROM
	movies
ORDER BY
	movie_lang;

-- select multiple distinct values
SELECT
	DISTINCT movie_lang, director_id
FROM movies
ORDER BY 1;

-- select all unique records
SELECT 
	DISTINCT *
FROM movies
ORDER BY movie_id;
