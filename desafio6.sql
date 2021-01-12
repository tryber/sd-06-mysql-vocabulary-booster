SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
jb.JOB_TITLE AS Cargo,
jh.START_DATE AS `Data de início do cargo`,
dp.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS emp, hr.jobs AS jb, hr.job_history AS jh, hr.departments AS dp
WHERE emp.EMPLOYEE_ID=jh.EMPLOYEE_ID AND jb.JOB_ID=jh.JOB_ID AND dp.DEPARTMENT_ID=jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
