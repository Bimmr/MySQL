SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 3: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE ap;

SELECT '';
SELECT '' AS '*** Task 1, Q1. Textbook Exercise 5-04(page 164) [2 points] ***';

INSERT INTO invoices 
            (invoice_id, 
             vendor_id, 
             invoice_number, 
             invoice_date, 
             invoice_total, 
             payment_total, 
             credit_total, 
             terms_id, 
             invoice_due_date, 
             payment_date) 
VALUES      (NULL, 
             32, 
             'AX-014-027', 
             '2014/8/1', 
             434.58, 
             0.00, 
             0.00, 
             2, 
             '2014/8/31', 
             NULL); 


SELECT ROW_COUNT() AS 'INSERT Rows affected';


SELECT '';
SELECT '' AS '*** Task 1, Q2. Textbook Exercise 5-05(page 165) [2 points] ***';

INSERT INTO invoice_line_items VALUES		
(last_insert_id(), 1, 160, 180.23, 'Hard Drive'),
(last_insert_id(), 2, 527, 254.35, 'Exchange Server update');

SELECT ROW_COUNT() AS 'INSERT Rows affected';


SELECT '';
SELECT '' AS '*** Task 1, Q3. Textbook Exercise 5-06(page 165) [2 points] ***';

UPDATE invoices SET 
credit_total = (invoice_total * 0.1),
payment_total = (invoice_total - credit_total)
WHERE invoice_id = last_insert_id();

SELECT ROW_COUNT() AS 'UPDATE Rows affected';


SELECT '';
SELECT '' AS '*** Task 1, Q4. Textbook Exercise 5-09(page 165) [4 points] ***';


DELETE FROM invoice_line_items
WHERE invoice_id = last_insert_id();

SELECT ROW_COUNT() AS 'DELETE Rows affected';

DELETE FROM invoices
WHERE invoice_id = last_insert_id();

SELECT ROW_COUNT() AS 'DELETE Rows affected';