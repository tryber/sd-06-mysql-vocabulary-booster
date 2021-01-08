USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN name_cargo VARCHAR(50))
BEGIN
SELECT (SELECT ROUND(AVG(b.SALARY), 2) FROM hr.jobs AS a
INNER JOIN hr.employees AS b ON a.JOB_ID = b.JOB_ID
GROUP BY a.JOB_TITLE
HAVING a.JOB_TITLE = name_cargo) AS `Média salarial`;
END $$
DELIMITER ;
