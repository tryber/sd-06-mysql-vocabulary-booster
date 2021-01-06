DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN search_term VARCHAR(200))
BEGIN
SELECT COUNT(job_history.employee_id) AS total_empregos
FROM job_history
INNER JOIN employees ON job_history.employee_id = employees.employee_id
WHERE email = search_term;
END $$

DELIMITER ;

CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
