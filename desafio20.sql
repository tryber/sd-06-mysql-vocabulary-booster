USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT
    CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME) AS `Nome completo`,
    d1.DEPARTMENT_NAME AS `Departamento`,
    j1.JOB_TITLE AS `Cargo`
  FROM
    job_history AS h1
  INNER JOIN
    employees AS e1 ON e1.EMPLOYEE_ID = h1.EMPLOYEE_ID
  INNER JOIN
    departments AS d1 ON d1.DEPARTMENT_ID = h1.DEPARTMENT_ID
  INNER JOIN
    jobs AS j1 ON j1.JOB_ID = h1.JOB_ID
  WHERE
    e1.EMAIL = 'NKOCHHAR'
  ORDER BY
    `Cargo`;
END; $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
