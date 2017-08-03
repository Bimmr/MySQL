SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 2: Task 2';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 2, Q1. SWE Exercise 1 [2 points] ***';

SELECT DISTINCT c_city
FROM consultant
ORDER BY c_city ASC;


SELECT '';
SELECT '' AS '*** Task 2, Q2. SWE Exercise 2 [2 points] ***';

SELECT p_id, project_name
FROM project
WHERE parent_p_id IS NOT NULL;


SELECT '';
SELECT '' AS '*** Task 2, Q3. SWE Exercise 3 [4 points] ***';

SELECT p1.p_id, p1.project_name, p1.parent_p_id ppid, p2.project_name
FROM project p1
LEFT JOIN project p2 ON p1.parent_p_id = p2.p_id;


SELECT '';
SELECT '' AS '*** Task 2, Q4. SWE Exercise 4 [3 points] ***';

SELECT c_id, skill_id, certification
FROM consultant_skill
WHERE certification = 'Y'
ORDER BY skill_id ASC, c_id ASC;


SELECT '';
SELECT '' AS '*** Task 2, Q5. SWE Exercise 5 [4 points] ***';
SELECT consultant.c_id, consultant.c_last, consultant.c_first, consultant_skill.skill_id, skill.skill_description
FROM consultant
JOIN consultant_skill ON consultant.c_id = consultant_skill.c_id
JOIN skill ON consultant_skill.skill_id = skill.skill_id
ORDER BY skill.skill_id ASC, consultant.c_id ASC;