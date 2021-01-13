USE hr;

delimiter $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_func VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(*) FROM job_history AS jh
INNER JOIN employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email_func INTO total_jobs;
RETURN total_jobs;

END $$

delimiter ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
