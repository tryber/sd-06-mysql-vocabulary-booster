SELECT CONCAT(E.first_name, '  ', E.last_name) AS 'Nome Completo',
J.job_title AS 'Cargo',
JH.start_date AS 'Data de início do cargo',
D.department_name AS 'Departamento'
FROM job_history AS JH
INNER JOIN employees AS E ON E.employee_id = JH.employee_id
INNER JOIN jobs AS J ON J.job_id = JH.job_id
INNER JOIN departments as D ON D.department_id = JH.department_id
ORDER BY `Nome Completo`;
