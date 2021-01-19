DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(
IN email VARCHAR(100))
BEGIN
SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS Departamento,
j.JOB_TITLE AS Cargo
FROM hr.employees e
LEFT JOIN hr.job_history jh ON
e.EMPLOYEE_ID = jh.EMPLOYEE_ID
LEFT JOIN hr.departments d ON
jh.DEPARTMENT_ID = d.DEPARTMENT_ID
LEFT JOIN hr.jobs j ON
j.JOB_ID = jh.JOB_ID
WHERE email = e.EMAIL
ORDER BY Departamento ASC, Cargo ASC;
END $$

DELIMITER ;
