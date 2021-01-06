SELECT
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    jobs.JOB_TITLE AS Cargo,
    emp.HIRE_DATE AS 'Data de início do cargo',
    dept.DEPARTMENT_NAME AS 'Departamento'
FROM hr.jobs
JOIN hr.employees AS emp
ON jobs.JOB_ID = emp.JOB_ID
JOIN hr.departments AS dept
ON emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, Cargo;
