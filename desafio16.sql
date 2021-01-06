USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (employee_email VARCHAR(225))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_count INT;

SELECT COUNT(*)
FROM hr.job_history AS job_his
INNER JOIN hr.employees AS employees
ON job_his.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = employee_email
INTO job_count;
RETURN job_count;
END $$

DELIMITER ;
