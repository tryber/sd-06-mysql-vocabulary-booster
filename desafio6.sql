SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
J.JOB_TITLE AS `Cargo`,
JH.START_DATE AS `Data de início do cargo`,
D.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS E,
hr.jobs AS J,
hr.job_history AS JH,
hr.departments AS D
WHERE E.JOB_ID = J.JOB_ID
AND E.EMPLOYEE_ID = JH.EMPLOYEE_ID
AND E.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
