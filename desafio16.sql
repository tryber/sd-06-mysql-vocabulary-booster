USE hr;
DROP PROCEDURE IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(
  IN email VARCHAR(25),
  OUT total INT)
BEGIN 
  SELECT COUNT(*) INTO total
  FROM hr.job_history AS jh
  INNER JOIN hr.employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.EMAIL = email;
END $$
DELIMITER ;

CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR', @tot_empregos);
SELECT ROUND(@tot_empregos, 2) AS total_empregos;
