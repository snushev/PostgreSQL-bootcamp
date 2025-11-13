-- attach sequence to a table

CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50)
);

INSERT INTO users(user_name) 
VALUES 
('Adam'),
('Josh');

ALTER SEQUENCE users_user_id_seq RESTART WITH 100;

INSERT INTO users(user_name) 
VALUES 
('Peter');

SELECT * FROM users;

CREATE TABLE users2(
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50)
);

CREATE SEQUENCE user2_user_id_seq
START WITH 100 OWNED BY users2.user_id;

ALTER TABLE users2
ALTER COLUMN user_id SET DEFAULT nextval('user2_user_id_seq');

INSERT INTO users2(user_name) 
VALUES 
('Adam'),
('Josh');

SELECT * FROM users2;
