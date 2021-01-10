DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(search_term VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(job_history.employee_id) 
FROM job_history
INNER JOIN employees ON job_history.employee_id = employees.employee_id
WHERE email = search_term
INTO result;
RETURN result;
END $$

DELIMITER ;
