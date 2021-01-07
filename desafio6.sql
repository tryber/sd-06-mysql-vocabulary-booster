SELECT (SELECT CONCAT(first_name,' ', last_name)) AS `Nome completo`,
(SELECT job_title FROM hr.jobs WHERE job_id = main.job_id) AS 'Cargo',
hire_date AS 'Data de início do cargo',
(SELECT department_name FROM hr.departments WHERE department_id = main.department_id) AS 'Departamento'
FROM hr.employees as main
ORDER BY `Nome completo` DESC, Cargo;
