USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EmplEmail varchar(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE num_jobs INT;
SELECT COUNT(EMAIL)
FROM hr.employees
INNER JOIN hr.job_history
ON hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
WHERE EMAIL = EmplEmail INTO num_jobs;
RETURN num_jobs;
END $$

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
