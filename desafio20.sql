DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN search_email VARCHAR(80))
BEGIN
  SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    d.DEPARTMENT_NAME AS 'Departamento',
    j.JOB_TITLE AS 'Cargo'
  FROM hr.employees AS e
  INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  INNER JOIN hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
  INNER JOIN hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
  WHERE jh.EMPLOYEE_ID = (SELECT EMPLOYEE_ID FROM hr.employees WHERE EMAIL = search_email)
  ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
