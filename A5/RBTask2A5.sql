SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 5: Task 2';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;


SELECT '';
SELECT '' AS '*** Task 2, Q1. SWE Exercise 1 [4 points] ***';
SELECT ROUND(AVG(score),2)
FROM evaluation,
(
	SELECT c_id, c_first, c_last FROM consultant
) AS e
WHERE e.c_id = evaluation.evaluatee_id AND 
	  CONCAT(c_first, ' ', c_last) = 'Janet Park';


SELECT '';
SELECT '' AS '*** Task 2, Q2. SWE Exercise 2 [4 points] ***';
SELECT RPAD(p_id, 4, ' ') AS 'p_id',
	   RPAD(c_id, 4, ' ') AS 'c_id',
       LPAD(FLOOR(datediff(roll_off_date, roll_on_date)/30.4), 6, ' ') 
		AS 'months'
FROM project_consultant;



SELECT '';
SELECT '' AS '*** Task 2, Q3. SWE Exercise 3 [5 points] ***';

SELECT consultant.c_id, 
	   RPAD(CONCAT(consultant.c_last, ', ', consultant.c_first), 20, ' ') 
		AS 'consultant full name',
       LPAD(consultant_skill.skill_id, 8, ' ') AS 'skill_id',
       RPAD(CASE WHEN certification = 'Y' THEN 'Certified' 
		ELSE 'Not Certified' END, 13, ' ') AS 'certification'
FROM consultant
JOIN consultant_skill ON consultant.c_id = consultant_skill.c_id;
