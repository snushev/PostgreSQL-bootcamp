-- ISERT DATA INTO A TABLE

-- create a test table 'customers'
CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	age INT
);


-- insert data into a table
INSERT INTO
	customers (first_name, last_name, email, age)
VALUES 
	('John', 'Doe', 'johndoe@mail.com', 25);


-- insert multiple data
INSERT INTO 
	customers (first_name, last_name)
VALUES
	('Jeane', 'Doe'),
	('Pete', 'Peterson'),
	('Adam', 'Adamson');

SELECT 
	*
FROM
	customers;

INSERT INTO 
	customers (first_name, last_name)
VALUES
	('Jack', 'O''Sullivan');

-- use RETURNING
INSERT INTO 
	customers (first_name)
VALUES
	('Ronnie')
RETURNING *;

-- use RETURNING with selected columns
INSERT INTO 
	customers (first_name)
VALUES
	('Josh')
RETURNING customer_id;
