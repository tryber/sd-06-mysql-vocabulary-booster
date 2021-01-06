SELECT CONCAT(UCASE(emp.FIRST_NAME), ' ', UCASE(emp.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
emp.SALARY AS `Salário`
FROM hr.employees AS emp, hr.job_history AS jh
WHERE emp.EMPLOYEE_ID=jh.EMPLOYEE_ID AND MONTH(jh.START_DATE) IN (1,2,3)
ORDER BY `Nome completo`, `Data de início do cargo`;
