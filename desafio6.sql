SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e, hr.job_history AS jh, hr.jobs AS j, hr.departments AS d
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND jh.JOB_ID = j.JOB_ID AND d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY e.FIRST_NAME DESC, Cargo ASC
