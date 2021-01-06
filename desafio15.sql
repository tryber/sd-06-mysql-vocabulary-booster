USE hr;

DELIMITER $$
CREATE PROCEDURE buscar_media_cargo(
IN job_name VARCHAR(35))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = job_name;
END $$
DELIMITER ;

CALL buscar_media_cargo('Programmer');
