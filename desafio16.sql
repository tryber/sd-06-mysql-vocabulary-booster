USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(40))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(JH.EMPLOYEE_ID) AS 'total_empregos' INTO result FROM hr.job_history AS JH
INNER JOIN hr.employees AS E ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = email;         
RETURN result;
END $$

DELIMITER ;
