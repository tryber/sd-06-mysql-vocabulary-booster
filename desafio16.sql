USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(255))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE jobs_count INT;
  SELECT
    COUNT(*)
  FROM hr.job_history AS jh
  INNER JOIN
    hr.employees AS e
      ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE
    e.EMAIL = email
  INTO jobs_count;
  RETURN jobs_count;
END $$

DELIMITER ;
