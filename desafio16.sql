USE hr;
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
RETURN (SELECT COUNT(jr.job_id) AS `total_empregos` FROM hr.job_history AS jr
WHERE jr.employee_id = (SELECT e.employee_id FROM hr.employees AS e WHERE e.email = employee_email));
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
