USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(
IN email VARCHAR(100),
OUT total_empregos INT
)
BEGIN
SELECT COUNT(j.EMPLOYEE_ID) AS `Total de Empregos` INTO total_empregos
FROM hr.employees e
INNER JOIN hr.job_history j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = email;
END $$

DELIMITER ;

CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR', @total_empregos);
SELECT @total_empregos;
