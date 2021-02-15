DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailPARAM VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_de_empregos INT;
SELECT COUNT(*) FROM hr.job_history WHERE EMPLOYEE_ID IN(SELECT EMPLOYEE_ID FROM hr.employees WHERE EMAIL = emailPARAM) INTO total_de_empregos;
RETURN total_de_empregos;
END $$

DELIMITER ;
