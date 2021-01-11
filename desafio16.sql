USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(
IN email VARCHAR(100))
BEGIN
SELECT COUNT(jh.EMPLOYEE_ID)
FROM hr.job_history jh, hr.employees e
WHERE jh.EMPLOYEE_ID = e.EMPLOYEE_ID AND email = e.EMAIL;
END $$

DELIMITER ;
