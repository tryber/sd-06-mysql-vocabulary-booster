USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
    RETURNS INT READS SQL DATA
    BEGIN
        DECLARE job_qt INT;
        SELECT
            COUNT(jobh.EMPLOYEE_ID)
        FROM hr.job_history AS jobh, hr.employees AS emp
        WHERE emp.EMAIL = email AND emp.EMPLOYEE_ID = jobh.EMPLOYEE_ID
        INTO job_qt;

        RETURN job_qt;
    END $$
DELIMITER ;
