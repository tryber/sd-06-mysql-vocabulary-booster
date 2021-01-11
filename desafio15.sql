USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
IN job VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial' FROM hr.employees AS e, hr.jobs AS j
WHERE job = j.JOB_TITLE AND e.JOB_ID = j.JOB_ID;
END $$

DELIMITER ;
