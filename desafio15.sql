USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(127))
BEGIN
  SELECT ROUND(AVG(e.SALARY), 2) 'Média salarial'
  FROM hr.employees e
    LEFT JOIN hr.jobs j
      ON e.JOB_ID = j.JOB_ID
  WHERE j.JOB_TITLE = job;
END $$

DELIMITER ;
