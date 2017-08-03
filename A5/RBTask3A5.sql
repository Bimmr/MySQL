SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 5: Task 3';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;


SELECT '';
SELECT '' AS '*** Task 3, Q1. MGS Exercise 12-3 [5 points] ***';
CREATE VIEW rb_order_item_products AS
SELECT orders.order_id, orders.order_date, orders.tax_amount, orders.ship_date,
	   order_items.item_price, order_items.discount_amount, 
	   (order_items.item_price - order_items.discount_amount) AS 'final_price', 
	   order_items.quantity, 
	   ((order_items.item_price - order_items.discount_amount)*order_items.quantity) 
	   AS 'item_total',
       products.product_name
FROM orders
	JOIN order_items ON orders.order_id = order_items.order_id
    JOIN products ON order_items.product_id = products.product_id;


SELECT '';
SELECT '' AS '*** Task 3, Q2. MGS Exercise 12-4 [2 points] ***';
SELECT order_id, 
	   product_name, 
	   item_total
FROM rb_order_item_products
ORDER BY item_total DESC;


SELECT '';
SELECT '' AS '*** Task 3, Q3. MGS Exercise 12-5 [4 points] ***';
CREATE VIEW rb_product_summary AS
SELECT product_name, 
	   (
		SELECT COUNT(product_name) 
		FROM RB_order_item_products b 
		WHERE b.product_name = a.product_name
	   ) AS 'order_count',
	   (
		SELECT COUNT(product_name) 
		FROM RB_order_item_products b 
		WHERE b.product_name = a.product_name
	   ) * item_total AS 'order_total'
FROM   rb_order_item_products a;


SELECT '';
SELECT '' AS '*** Task 3, Q3. MGS Exercise 12-5 [4 points] ***';
SELECT * 
FROM rb_product_summary
ORDER BY order_total DESC
LIMIT 5;