USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email varchar(50))
RETURNS int
DETERMINISTIC
BEGIN
DECLARE employee_email char(50);
SELECT COUNT(jh.JOB_ID) 
FROM hr.job_history AS jh
INNER JOIN hr.employees AS em
ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE em.EMAIL = email 	INTO employee_email;
RETURN employee_email;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
