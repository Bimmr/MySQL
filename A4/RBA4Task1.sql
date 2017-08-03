SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 4: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 1, Q1. MGS Exercise 6-1 [3 points] ***';
SELECT COUNT(order_id), sum(tax_amount)
FROM orders;


SELECT '';
SELECT '' AS '*** Task 1, Q2. MGS Exercise 6-2 [4 points] ***';
SELECT category_name,
	(SELECT COUNT(product_id)
    FROM products
    WHERE products.category_id = categories.category_id) AS 
    'Amount of Products',
    (SELECT MAX(list_price)
    FROM products
    WHERE products.category_id = categories.category_id) AS 
    'Max List Price'
FROM categories
WHERE 
	(SELECT COUNT(product_id)
    FROM products
    WHERE products.category_id = categories.category_id) > 0
ORDER BY
	(SELECT MAX(list_price)
    FROM products
    WHERE products.category_id = categories.category_id) DESC;


SELECT '';
SELECT '' AS '*** Task 1, Q3. MGS Exercise 6-6 [3 points] ***';
SELECT product_name, SUM((item_price-discount_amount)*quantity)  
	AS 'Total Orders\' Amount'
FROM products
JOIN order_items
	ON products.product_id = order_items.product_id
GROUP BY product_name
	WITH ROLLUP;


SELECT '';
SELECT '' AS '*** Task 1, Q4. MGS Exercise 7-3 [3 points] ***';
SELECT category_name
FROM categories
WHERE NOT EXISTS
	(SELECT *
    FROM products
    WHERE products.category_id = categories.category_id);