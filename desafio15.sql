USE hr;
DROP PROCEDURE IF EXISTS buscar_media_por_cargo;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(
  IN job_name VARCHAR(35),
  OUT salary_avg DECIMAL(8,2))
BEGIN 
  SELECT AVG(e.SALARY) INTO salary_avg
  FROM hr.employees AS e
  INNER JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
  WHERE j.JOB_TITLE = job_name;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer', @avg_salary);
SELECT ROUND(@avg_salary, 2) AS `Média salarial`;
