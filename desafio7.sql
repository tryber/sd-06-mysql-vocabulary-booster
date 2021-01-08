SELECT UPPER(CONCAT(emp.first_name, ' ', emp.last_name)) AS 'Nome completo',
t1.start_date AS 'Data de início', emp.salary AS 'Salário' from hr.job_history AS t1
JOIN hr.employees AS emp ON emp.employee_id = t1.employee_id
WHERE month(t1.start_date) BETWEEN 1 AND 3
ORDER BY CONCAT(emp.first_name, ' ', emp.last_name), t1.start_date;
