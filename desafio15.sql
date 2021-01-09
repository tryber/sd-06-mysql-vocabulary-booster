DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN search_term VARCHAR(200))
BEGIN
SELECT ROUND(AVG(salary), 2) AS `Média salarial`
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
WHERE job_title = search_term;
END $$

DELIMITER;

CALL buscar_media_por_cargo('Programmer');
