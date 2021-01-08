SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
h.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees AS e,
hr.job_history AS h
WHERE e.EMPLOYEE_ID = h.EMPLOYEE_ID AND
MONTH(h.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, `Data de início` ASC;
