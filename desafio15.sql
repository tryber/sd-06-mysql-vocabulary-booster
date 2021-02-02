
USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100))
BEGIN
SELECT ROUND(AVG(salary), 2) AS 'Média salarial'
FROM hr.employees AS em
LEFT JOIN hr.jobs AS jb
ON em.job_id = jb.job_id
WHERE jb.job_title = job_title;
END $$
DELIMITER;
