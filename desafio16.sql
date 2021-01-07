USE hr;
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN 
  DECLARE total INT;

  SELECT COUNT(*)
  FROM hr.job_history AS jh
  INNER JOIN hr.employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.EMAIL = email
  INTO total;

  RETURN total;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS 'total_empregos';
