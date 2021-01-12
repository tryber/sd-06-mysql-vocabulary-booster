SELECT CONCAT(UCASE(e.FIRST_NAME), ' ', UCASE(e.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees AS e, hr.job_history AS jh
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND MONTH(jh.START_DATE) IN (01, 02, 03)
ORDER BY e.FIRST_NAME ASC, jh.START_DATE;
