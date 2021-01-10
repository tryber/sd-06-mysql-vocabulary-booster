USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (employeeEmail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE RESULT INT;
	SELECT COUNT(jh.JOB_ID)
	FROM hr.job_history as jh
	inner join hr.employees as em
	on em.EMPLOYEE_ID = jh.EMPLOYEE_ID
	WHERE em.EMAIL = employeeEmail INTO RESULT;
    RETURN RESULT;
END $$
DELIMITER;
