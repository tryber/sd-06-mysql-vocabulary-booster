DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(20))
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS `Média salarial`
FROM hr.employees AS emp
JOIN hr.jobs AS job
ON emp.JOB_ID = job.JOB_ID
WHERE job.JOB_TITLE = cargo
GROUP BY emp.JOB_ID;
END $$
DELIMITER ;
