SELECT concat(FIRST_NAME, " ",LAST_NAME) AS "Nome completo",
JOB_TITLE AS "Cargo",
START_DATE AS "Data de início do cargo",
DEPARTMENT_NAME AS "Departamento"
FROM hr.employees, hr.jobs, hr.job_history, hr.departments
WHERE hr.employees.JOB_ID = hr.jobs.JOB_ID
AND hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
AND hr.departments.DEPARTMENT_ID = hr.job_history.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo;
