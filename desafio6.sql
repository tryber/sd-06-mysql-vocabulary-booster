SELECT
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    jobs.JOB_TITLE AS Cargo,
    jh.START_DATE AS 'Data de início do cargo',
    dept.DEPARTMENT_NAME AS 'Departamento'
FROM hr.jobs AS jobs
JOIN hr.job_history AS jh
ON jh.JOB_ID = jobs.JOB_ID
JOIN hr.employees AS emp
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
JOIN hr.departments AS dept
ON emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, Cargo;
