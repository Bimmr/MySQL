SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 3: Task 2';
SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 2, Q1, A. MGS Exercise 5-1 [8 points] ***';

INSERT INTO categories (
	category_id,
	category_name
	)
VALUES (
	NULL,
	'Wind'
	);

SELECT ROW_COUNT() AS 'INSERT Rows affected';

UPDATE categories
SET category_name = 'String'
WHERE category_id = last_insert_id();

SELECT ROW_COUNT() AS 'UPDATE Rows affected';

DELETE
FROM categories
WHERE category_id = last_insert_id();

SELECT ROW_COUNT() AS 'DELETE Rows affected';


SELECT '';
SELECT '' AS '*** Task 2, Q2, A. MGS Exercise 5-4 [6 points] ***';

INSERT INTO products (
	product_id,
	category_id,
	product_code,
	product_name,
	description,
	list_price,
	discount_percent,
	date_added
	)
VALUES (
	NULL,
	4,
	'dgx_640',
	'Yamaha DGX Digital Piano',
	'Yamaha DGX 640 Digital Piano with 88 keys.',
	845.95,
	10,
	SYSDATE()
	);
    
SELECT ROW_COUNT() AS 'INSERT Rows affected';

UPDATE products
SET discount_percent = 30
WHERE product_id = last_insert_id();

SELECT ROW_COUNT() AS 'UPDATE Rows affected';

SELECT '';
SELECT '' AS '*** Task 2, Q3, A. MGS Exercise 5-7 [6 points] ***';

INSERT INTO customers (
	customer_id,
	email_address,
	password,
	first_name,
	last_name
	)
VALUES (
	NULL,
	'randybimm@conestogac.on.ca',
	'',
	'randy',
	'bimm'
	);

SELECT ROW_COUNT() AS 'INSERT Rows affected';

UPDATE customers
SET password = 's3cr3t'
WHERE email_address = 'randybimm@conestogac.on.ca';

SELECT ROW_COUNT() AS 'UPDATE Rows affected';