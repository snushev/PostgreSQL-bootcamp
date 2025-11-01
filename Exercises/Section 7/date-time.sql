-- TIMESTAMP and TIMESTAMPTZ data types

-- create table
CREATE TABLE table_time_tz(
    ts TIMESTAMP,
    tstz TIMESTAMPTZ
    );

-- insert data
INSERT INTO 
    table_time_tz(
        ts,
        tstz
    )
VALUES
    ('2020-02-22 10:10:10', '2020-02-22 10:10:10-04');

SELECT * FROM table_time_tz;

-- change timezone
SET TIMEZONE = 'Europe/Sofia';
SHOW TIMEZONE;

-- current timestamp and time of the day
SELECT 
    CURRENT_TIMESTAMP,
    TIMEOFDAY();
