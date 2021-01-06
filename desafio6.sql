SELECT 
    CONCAT(first_name, ' ', last_name) AS 'Nome completo',
    Job_Title AS 'Cargo',
    START_DATE AS 'Data de início do cargo',
    DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history
        INNER JOIN
    hr.employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
        INNER JOIN
    hr.jobs ON jobs.JOB_ID = job_history.JOB_ID
        INNER JOIN
    hr.departments ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo`;
