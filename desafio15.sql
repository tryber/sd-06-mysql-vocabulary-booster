USE hr;
CREATE PROCEDURE buscar_media_por_cargo(IN AvgSal varchar(100))

SELECT ROUND(AVG(SALARY), 2)
FROM hr.jobs
INNER JOIN hr.employees
ON hr.jobs.JOB_ID = hr.employees.JOB_ID
WHERE JOB_TITLE = AvgSAl;
 

CALL buscar_media_por_cargo('Programmer');
