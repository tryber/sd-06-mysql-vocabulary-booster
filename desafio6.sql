SELECT 
    CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME) AS 'Nome completo',
    cargo.JOB_TITLE AS 'Cargo',
    inicio.START_DATE AS 'Data de início do cargo',
    depart.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS inicio
        INNER JOIN
    hr.employees AS employ ON inicio.EMPLOYEE_ID = employ.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS cargo ON inicio.JOB_ID = cargo.JOB_ID
        INNER JOIN
    hr.departments AS depart ON inicio.DEPARTMENT_ID = depart.DEPARTMENT_ID
ORDER BY CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME) DESC , cargo.JOB_TITLE;
