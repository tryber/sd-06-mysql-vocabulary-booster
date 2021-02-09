USE hr;

DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE todos_empregos INT;
SELECT COUNT(*) FROM hr.job_history AS hjh
INNER JOIN hr.employees AS he 
ON he.EMPLOYEE_ID = hjh.EMPLOYEE_ID
WHERE he.EMAIL=email INTO todos_empregos;
RETURN todos_empregos;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS total_empregos;
