SELECT UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome Completo',
E.SALARY AS 'Salário',
JH.START_DATE AS 'Data de início'
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
HAVING MONTH(JH.START_DATE) IN(1,2,3)
ORDER BY `Nome Completo`, `Data de início`;
