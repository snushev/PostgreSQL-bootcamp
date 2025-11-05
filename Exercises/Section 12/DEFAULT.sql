-- DEFAULT constraint

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    is_enable VARCHAR(2) DEFAULT 'Y'
);

INSERT INTO employees(first_name, last_name)
VALUES ('John', 'Doe');

SELECT * FROM employees;

-- set default value to existing column
ALTER TABLE 
    employees
ALTER COLUMN
    is_enable SET DEFAULT 'N';

INSERT INTO employees(first_name, last_name)
VALUES ('Jane', 'Dee');

-- drop default value
ALTER TABLE employees
ALTER COLUMN is_enable DROP DEFAULT;

INSERT INTO employees(first_name, last_name)
VALUES ('Peter', 'Peters');
