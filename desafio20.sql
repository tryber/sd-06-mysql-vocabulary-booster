USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(email VARCHAR(20))
BEGIN
SELECT CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) AS `Nome completo`,
DP.DEPARTMENT_NAME AS `Departamento`,
J.JOB_TITLE AS `Cargo`
FROM hr.employees AS EMP, hr.job_history AS JH, hr.departments AS DP, hr.jobs AS J
WHERE EMP.EMPLOYEE_ID=JH.EMPLOYEE_ID
AND JH.DEPARTMENT_ID=DP.DEPARTMENT_ID
AND JH.JOB_ID=J.JOB_ID
AND EMP.EMAIL=email
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
