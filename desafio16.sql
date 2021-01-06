USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_quantity INT;
SELECT COUNT(*)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS emp
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL = email INTO job_quantity;
RETURN job_quantity;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
