USE hr;
DROP PROCEDURE exibir_historico_completo_por_funcionario;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario (EMAIL VARCHAR (20))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
D.DEPARTMENT_NAME Departamento, J.JOB_TITLE Cargo
FROM hr.employees AS E
INNER JOIN hr.job_history JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs J ON JH.JOB_ID = J.JOB_ID
INNER JOIN hr.departments D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
WHERE E.EMAIL = EMAIL ORDER BY Cargo;
END $$
DELIMITER ;
