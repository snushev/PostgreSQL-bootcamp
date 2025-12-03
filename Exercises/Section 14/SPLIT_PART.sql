-- SPLIT_PART function

-- SPLIT_PART(string, delimeter, position)

SELECT split_part('1,2,3', ',', 2);

SELECT split_part('ONE, TWO, THREE', ',', 2);

SELECT split_part('A|B|C|D', '|', 3);


-- Get the release year of all the movies

SELECT
    movie_name,
    release_date,
    split_part(release_date::text, '-', 1) AS release_year
FROM
    movies;
