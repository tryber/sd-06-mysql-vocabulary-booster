USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employee_email VARCHAR(255))
BEGIN

SELECT CONCAT(e.first_name, ' ', e.) AS 'Nome completo',
d.department_name AS 'Departamento',last_name
j.job_title AS 'Cargo'
FROM hr.employees AS e
LEFT JOIN hr.job_history AS jh
ON e.employee_id = jh.employee_id
LEFT JOIN hr.departments AS d
ON d.department_id = jh.department_id
LEFT JOIN hr.jobs AS j
ON j.job_id = jh.job_id
WHERE e.email = employee_email
ORDER BY d.department_name ASC, j.job_title ASC;

END $$

DELIMITER ;
