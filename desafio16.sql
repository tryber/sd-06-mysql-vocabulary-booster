USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_amount INT;
SELECT COUNT(E.EMAIL)
FROM employees AS E
INNER JOIN job_history AS JH
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = email
INTO jobs_amount;
RETURN jobs_amount;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');