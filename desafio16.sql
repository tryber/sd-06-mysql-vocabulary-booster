USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_jobs INT;
    SELECT COUNT(*)
    FROM hr.job_history AS jobhis
    INNER JOIN hr.employees AS emp
    ON emp.EMPLOYEE_ID = jobhis.EMPLOYEE_ID
    WHERE emp.EMAIL = email INTO total_jobs;
    RETURN total_jobs;
END $$

DELIMITER ;
