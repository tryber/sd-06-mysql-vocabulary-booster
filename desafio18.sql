SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    jh.END_DATE AS 'Data de rescisão',
    ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365,
            2) AS 'Anos trabalhados'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
