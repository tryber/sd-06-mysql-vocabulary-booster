USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(225))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobHistory INT;
SELECT COUNT(*)
FROM hr.job_history
INNER JOIN hr.employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = email
INTO jobHistory;
RETURN jobHistory;
END $$
DELIMITER ;
