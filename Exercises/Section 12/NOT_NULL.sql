-- Constraint NOT NULL

CREATE TABLE table_nn(
    id SERIAL PRIMARY KEY,
    tag TEXT NOT NULL
);

INSERT INTO
    table_nn(tag)
VALUES
    ('John');

-- try to insert NULL value
INSERT INTO
    table_nn(tag)
VALUES
    (NULL); -- gives error

INSERT INTO
    table_nn(tag)
VALUES
    (''); -- it works!

CREATE TABLE table_nn2(
    id SERIAL PRIMARY KEY,
    test TEXT);

-- adding NOT NULL to existing column
ALTER TABLE table_nn2
ALTER COLUMN test SET NOT NULL;
