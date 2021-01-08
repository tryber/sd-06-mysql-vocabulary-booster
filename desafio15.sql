USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM hr.employees AS e
JOIN hr.jobs AS j ON e.job_id = j.job_id
WHERE j.job_title = cargo;
END $$
DELIMITER ;
