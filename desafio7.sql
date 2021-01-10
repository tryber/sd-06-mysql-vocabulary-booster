SELECT upper(concat(FIRST_NAME, " ",LAST_NAME)) AS "Nome completo",
START_DATE AS "Data de início",
SALARY AS "Salário"
FROM hr.employees, hr.jobs, hr.job_history
WHERE hr.employees.JOB_ID = hr.jobs.JOB_ID
AND hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
AND month(START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome Completo`, START_DATE;
