USE hr;
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(JH.JOB_ID)
FROM job_history AS JH
INNER JOIN employees AS E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE E.EMAIL = email INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
