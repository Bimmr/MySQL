SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 2: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 1, Q1. MGS Exercise 4-1 [5 points] ***';

SELECT category_name, product_name, list_price
FROM categories
JOIN products ON categories.category_id = products.category_id
ORDER BY product_name ASC;


SELECT '';
SELECT '' AS '*** Task 1, Q2. MGS Exercise 4-2 [5 points] ***';

SELECT first_name, last_name, line1, city, state, zip_code
FROM customers
JOIN addresses ON customers.customer_id = addresses.customer_id 
WHERE email_address LIKE 'allan.sherwood@yahoo.com';


SELECT '';
SELECT '' AS '*** Task 1, Q3. MGS Exercise 4-4 [5 points] ***';

SELECT last_name, first_name, order_date, product_name, item_price, 
	   discount_amount, quantity
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
JOIN products ON order_items.product_id = products.product_id
ORDER BY last_name ASC, order_date ASC, product_name ASC;


SELECT '';
SELECT '' AS '*** Task 1, Q4. MGS Exercise 4-5 [5 points] ***';

SELECT prodA.product_id, prodA.product_name, prodA.list_price
FROM products prodA, products prodB
WHERE prodA.product_id != prodB.product_id
	  AND prodA.list_price = prodB.list_price;


SELECT '';
SELECT '' AS '*** Task 1, Q5. MGS Exercise 4-7 [5 points] ***';

SELECT 'SHIPPED' AS 'ship_status', order_id, order_date
FROM orders
WHERE ship_date IS NOT NULL
UNION
SELECT 'UNSHIPPED' AS 'ship_status', order_id, order_date
FROM orders
WHERE ship_date IS NULL
ORDER BY order_date ASC;
