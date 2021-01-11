SELECT 
    CONCAT(A.first_name, ' ', A.last_name) AS 'Nome completo funcionário 1',
    A.SALARY AS 'Salário funcionário 1',
    A.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(B.first_name, ' ', B.last_name) 'Nome completo funcionário 2',
    B.SALARY AS 'Salário funcionário 2',
    B.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS A,
    hr.employees AS B
WHERE
    A.JOB_ID = B.JOB_ID
        AND CONCAT(A.first_name, ' ', A.last_name) <> CONCAT(B.first_name, ' ', B.last_name)
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
