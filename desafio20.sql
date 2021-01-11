USE hr;
DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;

DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_funcionario VARCHAR(200))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
D.DEPARTMENT_NAME AS Departamento,
J.JOB_TITLE AS Cargo
FROM employees AS E
INNER JOIN job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
INNER JOIN departments AS D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
INNER JOIN jobs AS J ON J.JOB_ID = JH.JOB_ID
WHERE E.EMAIL = email_funcionario
ORDER BY Departamento, Cargo;
END $$

DELIMITER ;
CALL exibir_historico_completo_por_funcionario('NKOCHHAR')
