-- FOREIGN KEY constraint
CREATE TABLE t_products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    supplier_id INT NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES t_suppliers(supplier_id)
);

CREATE TABLE IF NOT EXISTS t_suppliers(
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL
);

INSERT INTO t_suppliers(supplier_id, supplier_name)
VALUES
(1, 'Supplier 1'),
(2, 'Supplier 2'),
(3, 'Supplier 3');

INSERT INTO t_products(product_id, product_name, supplier_id) VALUES
(1, 'Pen', 2),
(2, 'Paper', 1),
(3, 'TV', 2),
(4, 'Keyboard', 1),
(5, 'Table', 3);


-- Delete data from parent table
DELETE FROM t_products WHERE product_id = 5;
DELETE FROM t_suppliers WHERE supplier_id = 3;

-- update data 
UPDATE t_products
SET supplier_id = 1
WHERE product_id = 2;

-- drop constraint
ALTER TABLE t_products
DROP CONSTRAINT t_products_supplier_id_fkey;

-- add FK on existing table 
-- DROP CONSTRAINT constraintName - if we want to update table with existing FK
ALTER TABLE t_products
ADD CONSTRAINT t_products_supplier_id_fkey
FOREIGN KEY (supplier_id)
REFERENCES t_suppliers(supplier_id);

SELECT p.*, s.* FROM t_products AS p
JOIN t_suppliers AS s 
ON p.supplier_id = s.supplier_id
