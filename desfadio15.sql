USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jobs
ON emp.JOB_ID = jobs.JOB_ID
WHERE jobs.JOB_TITLE = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
