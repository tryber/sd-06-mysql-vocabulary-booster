USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(128))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE jobs_nbr INT;
  SELECT COUNT(jh.EMPLOYEE_ID)
  FROM hr.job_history jh
    LEFT JOIN hr.employees e
      ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.EMAIL = email INTO jobs_nbr;
  RETURN jobs_nbr;
END $$
DELIMITER ;
