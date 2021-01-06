USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees AS emp
INNER JOIN hr.jobs AS job
    ON job.JOB_ID = emp.JOB_ID
WHERE job.JOB_TITLE = job_title;
END $$

DELIMITER ;
