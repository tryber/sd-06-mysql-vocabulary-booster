SELECT UCASE(CONCAT(e.FIRST_NAME,' ', e.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history as jh
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE month(jh.START_DATE) < 4
ORDER BY e.FIRST_NAME ASC, jh.START_DATE ASC;
