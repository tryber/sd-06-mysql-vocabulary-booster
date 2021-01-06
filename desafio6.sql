SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
        j.JOB_TITLE AS 'Cargo',
        jh.START_DATE AS 'Data de início do cargo',
        dp.DEPARTMENT_NAME AS 'Departamento'
FROM employees as e
        INNER JOIN jobs as j
                ON e.job_id = j.job_id
        INNER JOIN job_history AS jh
                ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN departments AS dp
                ON e.DEPARTMENT_ID = dp.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, j.JOB_TITLE ASC;
