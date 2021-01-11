USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN JobTitle varchar(50))
BEGIN
SELECT ROUND(AVG(em.SALARY), 2) AS 'Média salarial'
  FROM hr.employees AS em
  INNER JOIN hr.jobs AS j
  ON em.JOB_ID = j.JOB_ID
  WHERE JOB_TITLE = JobTitle;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
