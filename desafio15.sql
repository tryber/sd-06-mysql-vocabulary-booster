USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN job_title varchar(100))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees AS employees
LEFT JOIN hr.jobs AS jobs
ON employees.JOB_ID = jobs.JOB_ID
WHERE jobs.JOB_TITLE = job_title;
END $$

DELIMITER ;
