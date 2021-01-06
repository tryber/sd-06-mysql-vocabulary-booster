SELECT 
    UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome completo',
    START_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM
    hr.job_history
        INNER JOIN
    hr.employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE
    MONTH(START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome Completo` , `Data de início`;
