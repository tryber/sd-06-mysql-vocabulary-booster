USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(job VARCHAR(127))
BEGIN
  SELECT ROUND(AVG(e.SALARY), 2)
  FROM employees e
    LEFT JOIN jobs j
      ON e.JOB_ID = j.JOB_ID
  WHERE j.JOB_TITLE = job
END $$

DELIMITER ;