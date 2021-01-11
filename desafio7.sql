--desafio7.sql
SELECT UCASE(CONCAT(employees.first_name, ' ', employees.last_name)) AS `Nome completo`,
job_history.start_date AS `Data de início`,
employees.salary AS `Salário`
FROM ((hr.job_history
INNER JOIN hr.jobs
ON jobs.job_id = job_history.job_id)
INNER JOIN hr.employees
ON job_history.employee_id = employees.employee_id)
WHERE MONTH(job_history.start_date) BETWEEN 0 AND 4
ORDER BY `Nome completo` ASC, `Data de início` ASC;
