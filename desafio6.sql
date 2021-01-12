SELECT CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME) AS 'Nome completo',
hr.jobs.JOB_TITLE AS 'Cargo',
hr.job_history.START_DATE AS  'Data de início do cargo',
hr.departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history, hr.jobs, hr.employees, hr.departments
WHERE hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID AND
hr.job_history.JOB_ID = hr.jobs.JOB_ID AND
hr.job_history.DEPARTMENT_ID = hr.departments.DEPARTMENT_ID
ORDER BY hr.employees.FIRST_NAME DESC, hr.jobs.JOB_TITLE;
