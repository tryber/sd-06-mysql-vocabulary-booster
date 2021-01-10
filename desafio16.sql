USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(VarEmail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(JH.EMPLOYEE_ID)
FROM job_history AS JH, employees AS EMP
WHERE JH.EMPLOYEE_ID=EMP.EMPLOYEE_ID AND EMP.EMAIL=VarEmail
GROUP BY JH.EMPLOYEE_ID
INTO total;
RETURN total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');