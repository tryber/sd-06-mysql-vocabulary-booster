USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo (IN JobTitle VARCHAR(50))
BEGIN
SELECT ROUND(AVG(em.SALARY),2) AS 'Média salarial'
FROM hr.jobs as jb
inner join hr.employees as em
on em.JOB_ID = jb.JOB_ID
WHERE jb.JOB_TITLE = jobTitle; 
END $$
DELIMITER;
