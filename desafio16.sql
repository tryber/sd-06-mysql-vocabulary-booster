DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE quantidade INT;
  SELECT
    COUNT(j1.JOB_ID)
  FROM
    hr.job_history AS j1
  INNER JOIN
    employees AS e1 ON e1.EMPLOYEE_ID = j1.EMPLOYEE_ID
  WHERE
    e1.EMAIL = email INTO quantidade;
  RETURN quantidade;
END $$

DELIMITER ;

SELECT
  buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
