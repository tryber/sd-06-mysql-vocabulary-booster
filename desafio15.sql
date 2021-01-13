CREATE PROCEDURE buscar_media_por_cargo (cargo varchar(20))
SELECT ROUND(AVG(employees.SALARY), 2) AS `Média salarial` FROM employees
INNER JOIN jobs ON jobs.JOB_ID = employees.JOB_ID
WHERE jobs.JOB_TITLE = cargo
GROUP BY jobs.JOB_TITLE;

CALL buscar_media_por_cargo('Programmer');
