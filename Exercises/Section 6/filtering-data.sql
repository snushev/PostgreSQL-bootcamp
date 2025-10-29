-- filtering rows with single condition
SELECT 
	* 
FROM 
	movies
WHERE
	movie_lang = 'English'

-- with multiple conditions with AND
SELECT 
	*
FROM 
	movies
WHERE
	movie_lang = 'English'
	AND
	age_certificate = '18';

-- use OR
SELECT 
	*
FROM 
	movies
WHERE
	movie_lang = 'English'
	OR
	movie_lang = 'Chinese';

-- combine AND and OR conditions without parenthesis
SELECT 
	*
FROM 
	movies
WHERE
	movie_lang = 'English'
	OR
	movie_lang = 'Chinese'
	AND
	age_certificate = '12';

-- with parenthesis
SELECT 
	*
FROM 
	movies
WHERE
	(movie_lang = 'English'
	OR
	movie_lang = 'Chinese')
	AND
	age_certificate = '12';

-- comparison with mathematical operators

-- all movies with length larger than 100
SELECT 
	*
FROM
	movies
WHERE 
	movie_length > 100
ORDER BY movie_length;

-- all movies where release date is before 2001
SELECT 
	*
FROM
	movies
WHERE 
	release_date <= '2000-12-31'
ORDER BY
	release_date;
	
-- all movies where movie language is not English
SELECT 
	*
FROM
	movies
WHERE
	movie_lang <> 'English' -- != is the same as <>
ORDER BY
	movie_lang;

-- using LIMIT 

-- first 5 movies
SELECT
	*
FROM
	movies
ORDER BY 
	movie_name
LIMIT 5;

-- first 5 directors from USA 
SELECT 
	*
FROM 
	directors
WHERE
	nationality = 'American'
ORDER BY
	date_of_birth
LIMIT 5;

-- top 10 youngest female actors
SELECT 
	*
FROM
	actors
WHERE 
	gender = 'F'
ORDER BY 
	date_of_birth DESC
LIMIT 10;

-- top 10 most domestic profitable movies
SELECT 
	* 
FROM 
	movies_revenues
ORDER BY
	revenues_domestic DESC NULLS LAST
LIMIT 10;

-- using OFFSET

-- 5 films starting from the fourth ordered by movie_id
SELECT
	*
FROM
	movies
LIMIT 5 OFFSET 3;

-- 5 movies after the top 5 highest domestic profit movies
SELECT
	*
FROM
	movies_revenues
ORDER BY 
	revenues_domestic DESC 
	NULLS LAST
LIMIT 5 
OFFSET 5;
