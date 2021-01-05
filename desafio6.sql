SELECT CONCAT(Employees.FIRST_NAME, ' ', Employees.LAST_NAME) AS 'Nome completo',
Jobs.JOB_TITLE AS 'Cargo',
Job_History.START_DATE AS 'Data de início do cargo',
Departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS Employees
INNER JOIN hr.jobs AS Jobs
ON Jobs.JOB_ID = Employees.JOB_ID
INNER JOIN hr.job_history AS Job_History
ON Employees.EMPLOYEE_ID = Job_History.EMPLOYEE_ID
INNER JOIN hr.departments AS Departments
ON Job_History.DEPARTMENT_ID = Departments.DEPARTMENT_ID
ORDER BY Employees.FIRST_NAME DESC, Jobs.JOB_TITLE;
