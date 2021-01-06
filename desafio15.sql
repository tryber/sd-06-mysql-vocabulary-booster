USE hr;
DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN search_role VARCHAR(200))
BEGIN
SELECT ROUND(AVG(salary), 2)  AS `Média salarial` FROM hr.employees
WHERE job_id = (SELECT job_id FROM hr.jobs WHERE job_title = search_role);
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
