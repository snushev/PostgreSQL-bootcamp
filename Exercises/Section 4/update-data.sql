-- update table
UPDATE 
	customers
SET
	email = 'test@mail.co'
WHERE
	customer_id = 1;

-- update multiple columns
UPDATE
	customers
SET
	email = 'no@mail.it',
	age = 30
WHERE 
	customer_id = 5;

-- update with RETURNING
UPDATE 
	customers
SET	
	email = 'a@b.com'
WHERE
	first_name = 'Ronnie'
RETURNING
	customer_id,
	first_name,
	email;

-- create new column
ALTER TABLE 
	customers
ADD COLUMN 
	is_enable VARCHAR(2);
	
-- update all records in table
UPDATE 
	customers
SET
	is_enable = 'Y'
RETURNING *;
