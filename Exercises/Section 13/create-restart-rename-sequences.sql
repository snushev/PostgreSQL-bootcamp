-- Sequences

-- Create a sequence
CREATE SEQUENCE IF NOT EXISTS test_seq;

-- advance sequence and return new value
SELECT nextval('test_seq');

-- select current value
SELECT currval('test_seq');

-- set a sequence
SELECT setval('test_seq', 100);

-- set a sequence, not changing current value
SELECT setval('test_seq', 2, FALSE);

-- control the sequence start value
CREATE SEQUENCE IF NOT EXISTS test_seq2 START WITH 100;

-- Alter sequence
SELECT nextval('test_seq');

-- Alter sequence restart and rename
ALTER SEQUENCE test_seq RESTART WITH 100;

ALTER SEQUENCE test_seq RENAME TO my_sequence4;
