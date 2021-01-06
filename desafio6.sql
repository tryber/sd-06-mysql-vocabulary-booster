SELECT
CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
employees.HIRE_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM ((hr.employees
INNER JOIN jobs ON employees.JOB_ID = jobs.JOB_ID)
INNER JOIN departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID)
ORDER BY concat(employees.FIRST_NAME, " ", employees.LAST_NAME) DESC,
jobs.JOB_TITLE ASC;
