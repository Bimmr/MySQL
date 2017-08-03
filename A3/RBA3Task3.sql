SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 3: Task 3';
SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 3, Q1, SWE Exercise 1 [2 points] ***';

INSERT INTO consultant VALUES (
	106,
    'bimm',
    'randy',
    'e',
    '123 ABS St',
    'kitchener',
    'on',
    '54703',
    '7155559652',
    'email@email.com'
	);

SELECT ROW_COUNT() AS 'INSERT Rows affected';


SELECT '';
SELECT '' AS '*** Task 3, Q2, SWE Exercise 2 [2 points] ***';

INSERT INTO client VALUES (
	17,
    'City of Waterloo',
    'Last',
    'First',
    '5198861550'
    );

SELECT ROW_COUNT() AS 'INSERT Rows affected';


SELECT '';
SELECT '' AS '*** Task 3, Q3, SWE Exercise 3 [3 points] ***';

INSERT INTO project (
	p_id,
    project_name,
    mgr_id
    )
VALUES (
	88,
    'ION Rapid Transit',
    106
	);

SELECT ROW_COUNT() AS 'INSERT Rows affected';


SELECT '';
SELECT '' AS '*** Task 3, Q4, SWE Exercise 4 [3 points] ***';
UPDATE project
SET parent_p_id = 88
WHERE parent_p_id IS NULL
	AND p_id <> 88;

SELECT ROW_COUNT() AS 'UPDATE Rows affected';