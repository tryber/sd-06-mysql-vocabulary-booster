USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT COUNT(*) AS 'total_empregos'
FROM hr.job_history
INNER JOIN hr.employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE employees.EMAIL = email;
END $$

DELIMITER ;
CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
