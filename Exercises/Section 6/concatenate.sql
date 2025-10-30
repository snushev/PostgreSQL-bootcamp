-- concatenate

-- concat first and last name
SELECT 
    actor_id,
    first_name || ' ' || last_name AS full_name 
FROM 
    actors;
     
SELECT 
    actor_id,
    CONCAT(first_name, ' ', last_name) AS full_name 
FROM
    actors

-- concat first, last name and birth date separated with comma
SELECT
    actor_id,
    CONCAT_WS(', ', first_name, last_name, date_of_birth) AS actor_info
FROM 
    actors;
