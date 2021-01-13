USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(email)
BEGIN
  SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME ) 'Nome completo',
    d.DEPARTMENT_NAME 'Departamento',
    j.JOB_TITLE 'Cargo'
  FROM hr.job_history jh
    INNER JOIN hr.employees e
      ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    INNER JOIN hr.jobs j
      ON e.JOB_ID = j.JOB_ID
    INNER JOIN hr.departments d
      ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
  ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
