USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(email VARCHAR(50))
BEGIN
SELECT
CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
d.depar AS 'Departamento',
j.job_title AS 'Cargo'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.employee_id = e.employee_id
INNER JOIN hr.jobs AS j
ON jh.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS d
ON d.department_id = jh.department_id
WHERE e.EMAIL = "NKOCHHAR"
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario("NKOCHHAR");
