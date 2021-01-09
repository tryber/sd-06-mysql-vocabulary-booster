DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN param VARCHAR(200))
BEGIN
SELECT ROUND(AVG(salary), 2) AS `Média salarial`
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
WHERE job_title = param;
END $$

DELIMITER;

CALL buscar_media_por_cargo('Programmer');
