SELECT '' AS 'Randy Bimm';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 4: Task 2';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Q1. SWE Exercise 1 [2 points] ***';

SELECT 
	ROUND(AVG(score), 1)
		AS 'Average Score for 105'
FROM evaluation      
WHERE
	evaluatee_id = 105;
    
    
SELECT '';
SELECT '' AS '*** Q2. SWE Exercise 2 [2 points] ***';

SELECT
	COUNT(c_id)
		AS 'Certified for Skill 1'
FROM consultant_skill
WHERE
	skill_id = 1 AND
    certification = 'Y';
    
    
SELECT '';
SELECT '' AS '*** Q3. SWE Exercise 3 [4 points] ***';
SELECT DISTINCT c_first, c_last
FROM consultant c, project_consultant pc,
( 
	SELECT pc.p_id
	FROM consultant c
    JOIN project_consultant pc
    ON c.c_id = pc.c_id
    WHERE c.c_first = 'Mark' AND
    c.c_last = 'Myers'
) AS p 
	WHERE pc.p_id = p.p_id AND
    pc.c_id = c.c_id;

    
SELECT '';
SELECT '' AS '*** Q4. SWE Exercise 4 [5 points] ***';

SELECT project.p_id, project.project_name
FROM project JOIN evaluation
ON project.p_id = evaluation.p_id
WHERE evaluation.p_id IS NOT NULL
UNION
SELECT project.p_id, project.project_name
FROM project,
(
	SELECT project.p_id, consultant.c_last
    FROM project
    JOIN consultant ON project.mgr_id = consultant.c_id
    WHERE LEFT(consultant.c_last, 1) = 'Z'
) AS m
WHERE m.p_id = project.p_id;