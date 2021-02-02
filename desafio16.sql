  
USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(255))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_count INT;
SELECT COUNT(*)
FROM hr.job_history AS jh
LEFT JOIN hr.employees AS em
ON jh.employee_id = em.employee_id
WHERE em.email = employee_email
INTO job_count;
RETURN job_count;
END $$
DELIMITER;
