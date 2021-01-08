SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
        jh.START_DATE AS 'Data de início',
        e.SALARY AS 'Salário'
FROM employees as e
        INNER JOIN job_history AS jh
            ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) = 01 OR MONTH(jh.START_DATE) = 02 OR MONTH(jh.START_DATE) = 03
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) ASC, jh.START_DATE ASC;
