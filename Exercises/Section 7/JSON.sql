-- JSON data type

-- create sample table
CREATE TABLE
    table_json(
        id SERIAL PRIMARY KEY,
        docs JSON
    )

-- insert some data
INSERT INTO
    table_json(docs)
VALUES
    ('[1,2,3,4,5,6]'),
    ('[2,3,4,5,6,7]'),
    ('{"key":"value"}')

SELECT docs FROM table_json;


ALTER TABLE table_json
ALTER COLUMN docs TYPE JSONB;

-- search specific data in JSON column
SELECT 
    * 
FROM 
    table_json
WHERE 
    docs @> '2';


CREATE INDEX ON table_json USING GIN(docs jsonb_path_ops);
