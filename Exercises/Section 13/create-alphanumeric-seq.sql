-- create Alpha-numeric sequence
CREATE SEQUENCE table_seq;
CREATE TABLE contacts
(
    contact_id TEXT NOT NULL DEFAULT ('ID' || nextval('table_seq')),
    contact_name VARCHAR(150)
);

INSERT INTO contacts(contact_name)
VALUES 
('Josh');

SELECT * FROM contacts;

ALTER SEQUENCE table_seq OWNED BY contacts.contact_id;
