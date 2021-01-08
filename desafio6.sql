SELECT CONCAT(t1.first_name, ' ', t1.last_name) AS 'Nome completo',
t2.job_title AS 'Cargo',
t3.start_date AS 'Data de início do cargo',
t4.department_name AS 'Departamento'
FROM hr.job_history as t3
INNER JOIN hr.jobs AS t2 ON t3.job_id = t2.job_id
INNER JOIN hr.employees AS t1 ON t3.employee_id = t1.employee_id
INNER JOIN hr.departments AS t4 ON t3.department_id = t4.department_id
ORDER BY CONCAT(t1.first_name, ' ', t1.last_name) DESC, t2.job_title;
