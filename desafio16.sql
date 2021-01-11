USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE number_of_jobs INT;
SELECT COUNT(jh.EMPLOYEE_ID)
FROM hr.job_history jh, hr.employees e
WHERE jh.EMPLOYEE_ID = e.EMPLOYEE_ID AND email = e.EMAIL INTO number_of_jobs;
RETURN number_of_jobs;
END $$

DELIMITER ;
