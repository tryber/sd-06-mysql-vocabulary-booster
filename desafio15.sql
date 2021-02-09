USE hr;

DROP PROCEDURE IF EXISTS buscar_media_por_cargo;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN name_cargo VARCHAR(50))
BEGIN
SELECT (SELECT ROUND(AVG(he.SALARY), 2) 
FROM hr.jobs AS hj
INNER JOIN hr.employees AS he
ON hj.JOB_ID = he.JOB_ID
GROUP BY hj.JOB_TITLE
HAVING he.JOB_TITLE = name_cargo) AS `Média salarial`;
END $$
DELIMITER ;
