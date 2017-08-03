SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 5: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 1, Q1. MGS Exercise 8-1 [4 points] ***';
SELECT FORMAT(list_price, 2),
	   CAST(discount_percent AS SIGNED),
       ROUND(list_price * (discount_percent/100),2) AS 'discount_amount',
       DATE_FORMAT(date_added, '%m-%d') as 'month_day_added'
FROM products;


SELECT '';
SELECT '' AS '*** Task 1, Q2. MGS Exercise 9-2 [4 points] ***';
SELECT order_date,
	   DATE_FORMAT(order_date, '%Y'),
       DATE_FORMAT(order_date, '%a-%m-%Y'),
       DATE_FORMAT(order_date, '%h:%m%p'),
       DATE_FORMAT(order_date, '%m-%d-%y %h:%m')
FROM orders;


SELECT '';
SELECT '' AS '*** Task 1, Q3. MGS Exercise 9-3 [5 points] ***';
SELECT card_number,
	   LENGTH(card_number),
       RIGHT(card_number, 4),
       CONCAT
	   (
		LPAD('', 4, 'X'), 
		'-',
		LPAD('', 4, 'X'),
		'-',
		LPAD('', 4, 'X'),
		'-',
		RIGHT(card_number, 4)
	   )
FROM orders;


SELECT '';
SELECT '' AS '*** Task 1, Q4. MGS Exercise 9-4 [5 points] ***';
SELECT order_id,
	   order_date,
       DATE_ADD(order_date, INTERVAL 2 DAY) AS 'est_ship_date',
       datediff(DATE_ADD(order_date, INTERVAL 2 DAY), order_date) AS 'days_to_ship'
FROM orders
WHERE month(order_date) = 4 AND year(order_date) = 2015;