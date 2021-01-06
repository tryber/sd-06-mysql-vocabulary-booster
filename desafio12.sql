SELECT 
    CONCAT(table1.FIRST_NAME, ' ', table1.LAST_NAME) AS 'Nome completo funcionário 1',
    table1.SALARY AS 'Salário funcionário 1',
    table1.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(table2.FIRST_NAME, ' ', table2.LAST_NAME) AS 'Nome completo funcionário 2',
    table2.SALARY AS 'Salário funcionário 2',
    table2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS table1
        INNER JOIN
    hr.employees AS table2 ON table1.JOB_ID = table2.JOB_ID
        AND CONCAT(table1.FIRST_NAME, ' ', table1.LAST_NAME) <> CONCAT(table2.FIRST_NAME, ' ', table2.LAST_NAME)
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`
LIMIT 2000;
