SELECT UCASE(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)) AS 'Nome completo',
hi.START_DATE AS 'Data de início',
em.SALARY AS Salário
FROM hr.employees AS em
INNER JOIN hr.job_history AS hi
ON hi.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE MONTH(hi.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
