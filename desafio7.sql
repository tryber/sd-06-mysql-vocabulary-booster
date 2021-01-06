SELECT 
    UCASE(CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME)) AS 'Nome completo',
    inicio.START_DATE AS 'Data de início',
    employ.SALARY AS 'Salário'
FROM
    hr.job_history AS inicio
        INNER JOIN
    hr.employees AS employ ON inicio.EMPLOYEE_ID = employ.EMPLOYEE_ID
WHERE
    MONTH(inicio.START_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME) , inicio.START_DATE;
