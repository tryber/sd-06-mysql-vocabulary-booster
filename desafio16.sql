USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_do_funcionario VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE total_empregos INT;
	SELECT COUNT(E.EMPLOYEE_ID)
	FROM employees AS E, job_history AS JH
	WHERE JH.EMPLOYEE_ID = E.EMPLOYEE_ID AND E.EMAIL = email_do_funcionario INTO total_empregos;
    RETURN total_empregos;
END $$

DELIMITER ;
