USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(200))
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
  FROM hr.employees AS emp
  INNER JOIN hr.jobs AS jo
  ON emp.JOB_ID = jo.JOB_ID
  WHERE jo.JOB_TITLE LIKE cargo
  GROUP BY jo.JOB_ID;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
