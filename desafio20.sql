DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employeeEmail VARCHAR(100))

BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
D.DEPARTMENT_NAME AS 'Departamento',
J.JOB_TITLE AS 'Cargo'
FROM hr.job_history JH
LEFT JOIN hr.employees E
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
LEFT JOIN hr.jobs J
ON JH.JOB_ID = J.JOB_ID
LEFT JOIN hr.departments D
ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE JH.EMPLOYEE_ID IN(SELECT EMPLOYEE_ID FROM hr.employees WHERE EMAIL = employeeEmail)
ORDER BY `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
