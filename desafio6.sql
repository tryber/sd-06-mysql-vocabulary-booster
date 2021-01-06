SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
jb.JOB_TITLE AS Cargo,
emp.HIRE_DATE AS `Data de início do cargo`,
dp.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS emp, hr.jobs AS jb, hr.departments AS dp
WHERE emp.JOB_ID=jb.JOB_ID AND emp.DEPARTMENT_ID=dp.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
