-- using UPSERT

--create table
CREATE TABLE t_tags(
	id SERIAL PRIMARY KEY,
	tag text UNIQUE,
	update_date TIMESTAMP DEFAULT NOW()
);

-- insert some data
INSERT INTO t_tags (tag) VALUES
	('Pen'),
	('Pensil')
RETURNING *;

-- insert a record that exists
INSERT INTO 
	t_tags(tag)
VALUES
	('pen')
ON CONFLICT 
	(tag)
DO NOTHING;

-- insert a record that exists and set new value
INSERT INTO 
	t_tags(tag)
VALUES
	('pen')
ON CONFLICT 
	(tag)
DO 
	UPDATE SET
		tag = EXCLUDED.tag,
		update_date = NOW()
RETURNING *;
