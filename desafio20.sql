USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
D.DEPARTMENT_NAME AS `Departamento`,
J.JOB_TITLE AS `Cargo`
FROM hr.job_history AS JH 
JOIN hr.employees AS E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
JOIN hr.departments AS D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
JOIN hr.jobs as J ON J.JOB_ID = JH.JOB_ID
WHERE E.EMAIL = email;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
