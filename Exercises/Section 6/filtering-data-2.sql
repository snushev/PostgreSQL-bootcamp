-- using FETCH

-- first row of movies table
SELECT
	*
FROM
	movies
FETCH FIRST 1 ROW ONLY;

-- top 5 longest movies by length
SELECT
	*
FROM
	movies
ORDER BY
	movie_length DESC
FETCH FIRST 5 ROW ONLY;

-- top 5 oldest american directors
SELECT
	*
FROM
	directors
WHERE 
	nationality = 'American'
ORDER BY 
	date_of_birth
FETCH FIRST 5 ROWS ONLY;

-- first 5 longest movies from the 5th record onwards by movie length
SELECT
	* 
FROM 
	movies
ORDER BY 
	movie_length DESC
OFFSET 5
FETCH FIRST 5 ROWS ONLY;


-- IN and NOT IN

-- get all movies in english, chinese and japanese
SELECT 
	*
FROM
	movies
WHERE
	movie_lang IN ('English', 'Chinese', 'Japanese');

-- get all movies where age certification is 13 and PG
SELECT 
    *
FROM
    movies
WHERE
    age_certificate IN ('12', 'PG')
ORDER BY
    age_certificate;

-- get all movies where director id is not 13 or 10
SELECT
    *
FROM
    movies
WHERE
    director_id NOT IN ('13', '10')
ORDER BY
    movie_id;

-- BETWEEN and NOT BETWEEN

-- all actors where birth_date between 1991 and 1995
SELECT
    *
FROM
    actors
WHERE
    date_of_birth BETWEEN '1991-01-01' AND '1995-12-31';

-- all movies between 1998 and 2002
SELECT
    *
FROM
    movies
WHERE
    release_date BETWEEN '1998-01-01' AND '2002-12-31'
ORDER BY
    release_date;

-- all english movies where length is NOT between 100 and 200
SELECT
    *
FROM
    movies
WHERE 
    movie_lang = 'English'
    AND
    movie_length NOT BETWEEN 100 AND 200;

-- LIKE and ILIKE returns bool

-- search character using '%'
SELECT 'hello' LIKE 'h%'; -- true
SELECT 'hello' LIKE '%e%'; -- true
SELECT 'hello' LIKE '%ll'; -- false

--search character using '_'
SELECT 'hello' LIKE '_ello'; -- true
SELECT 'hello' LIKE '__ll_'; -- true

-- using % and _
SELECT 'hello' LIKE '%ll_'; -- true

-- all actors names where first name starting with 'A'
SELECT 
    *
FROM
    actors
WHERE 
    first_name LIKE 'A%'
ORDER BY 
    first_name;

-- all actors names where last name ending with 'a'
SELECT 
    *
FROM
    actors
WHERE 
    last_name LIKE '%a'
ORDER BY 
    last_name;

-- all actors where first name with 5 characters only
SELECT 
    *
FROM
    actors
WHERE 
    first_name LIKE '_____'
ORDER BY
    first_name;

-- same as previous with LENGTH
SELECT 
    *
FROM
    actors
WHERE 
    LENGTH(first_name) = 5
ORDER BY
    first_name DESC;

-- actors where second letter of the first name is 'l'
SELECT 
    *
FROM
    actors
WHERE
    first_name LIKE '_l%'
ORDER BY    
    first_name

-- ILIKE is case insensitive
SELECT 
    *
FROM 
    actors
WHERE 
    first_name ILIKE 'tim';

-- NULL and NOT NULL
-- actors with missing birth date
SELECT 
    *
FROM
    actors
WHERE
    date_of_birth IS NULL;

-- actors with missing birth date or firts name
SELECT 
    *
FROM
    actors
WHERE
    date_of_birth IS NULL
    OR first_name IS NULL;

-- movies where domestic revenues is NULL
SELECT 
    * 
FROM 
    movies_revenues 
WHERE 
    revenues_domestic IS NULL;

-- movies where domestic revenues and international revenues is NULL
SELECT 
    * 
FROM 
    movies_revenues 
WHERE 
    revenues_domestic IS NULL
    AND revenues_international IS NULL;
    
