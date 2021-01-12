USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*)
FROM hr.job_history AS J 
JOIN hr.employees AS E ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
WHERE E.EMAIL = email
INTO total;
RETURN total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
