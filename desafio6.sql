SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS `Nome completo`,
  JOB_TITLE AS `Cargo`,
  START_DATE AS `Data de início do cargo`,
  DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS jh
  INNER JOIN hr.jobs AS j
    ON jh.JOB_ID = j.JOB_ID
  LEFT JOIN hr.employees AS e
    ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  LEFT JOIN hr.departments AS d
    ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
