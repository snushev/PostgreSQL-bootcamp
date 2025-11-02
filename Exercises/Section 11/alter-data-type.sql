-- Alter data types
CREATE TYPE myaddress AS(
    city VARCHAR(50),
    country VARCHAR(20)
);

ALTER TYPE myaddress RENAME TO my_address;

-- change the owner
ALTER TYPE my_address OWNER TO other_user;

-- change schema
CREATE SCHEMA test_scm;
ALTER TYPE my_address SET SCHEMA test_scm;

-- add a new attribute
ALTER TYPE test_scm.my_address ADD ATTRIBUTE street_address VARCHAR(150);

-- Alter an ENUM data type
CREATE TYPE my_colors 
AS ENUM ('green', 'red', 'blue');

-- update a value
ALTER TYPE my_colors 
RENAME VALUE 'red' TO 'orange';

SELECT enum_range(NULL::my_colors);

-- add a new value
ALTER TYPE my_colors
ADD VALUE 'red' AFTER 'green';

-- update ENUM data in a production server
CREATE TYPE status_enum 
AS ENUM('queued', 'waiting', 'running', 'done');

CREATE TABLE jobs(
    job_id SERIAL PRIMARY KEY,
    job_status status_enum
);

INSERT INTO jobs(job_status)
VALUES 
    ('queued'),
    ('waiting'),
    ('done');

SELECT * FROM jobs;

UPDATE 
    jobs 
SET 
    job_status = 'running'
WHERE 
    job_status = 'waiting';

ALTER TYPE
    status_enum
RENAME TO
    status_enum_old;

CREATE TYPE status_enum 
AS ENUM('queued', 'running', 'done');

ALTER TABLE 
    jobs 
ALTER COLUMN 
    job_status 
TYPE 
    status_enum 
USING 
    job_status::text::status_enum;

DROP TYPE status_enum_old;

-- make ENUM type with DEFAULT value
CREATE TYPE status AS ENUM ('pending','approved', 'declined');

CREATE TABLE cron_jobs(
    chron_job_id SERIAL PRIMARY KEY,
    status status DEFAULT 'pending'
);

INSERT INTO cron_jobs(chron_job_id)
VALUES (2);

SELECT * FROM cron_jobs;

-- create TYPE if not exists using PL/pgSQL 
DO
$$
BEGIN
    IF NOT EXISTS (SELECT *
                    FROM pg_type typ
                        INNER JOIN pg_namespace nsp
                            ON nsp.oid = typ.typnamespace
                    WHERE nsp.nspname = current_schema()
                        AND typ.typname = 'ai') THEN
    CREATE TYPE ai
        AS (a TEXT,
        i INTEGER);
    END IF;
END;
$$
LANGUAGE plpgsql;
