USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS TINYINT READS SQL DATA

BEGIN
	DECLARE total_empregos TINYINT;
	SELECT COUNT(jo.EMPLOYEE_ID)
	FROM employees AS em 
	INNER JOIN job_history AS jo
	ON em.EMPLOYEE_ID = jo.EMPLOYEE_ID
	WHERE em.EMAIL = email INTO total_empregos;
  RETURN total_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS total_empregos;