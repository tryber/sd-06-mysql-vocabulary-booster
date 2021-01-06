USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT DETERMINISTIC
BEGIN
DECLARE quantidade_de_empregos INT;
SELECT COUNT(jh.JOB_ID)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID=jh.EMPLOYEE_ID
WHERE e.EMAIL=email INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
