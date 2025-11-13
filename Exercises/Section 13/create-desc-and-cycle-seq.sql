-- create descendinbg sequence and cycle | no cycle
CREATE SEQUENCE seq_desc
INCREMENT -1
MINVALUE 1
MAXVALUE 3
START 3
CYCLE;

SELECT nextval('seq_desc');

CREATE SEQUENCE seq_desc1
INCREMENT -1
MINVALUE 1
MAXVALUE 3
START 3
NO CYCLE;

SELECT nextval('seq_desc1');
