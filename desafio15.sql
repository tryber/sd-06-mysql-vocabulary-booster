DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN nome_cargo VARCHAR(40))
BEGIN
SELECT ROUND(AVG(em.SALARY), 2) AS "Média Salarial"
FROM hr.employees AS em
INNER JOIN hr.jobs AS jo ON em.JOB_ID = jo.JOB_ID
WHERE jo.JOB_TITLE = nome_cargo;
END $$ 
DELIMITER ;
