SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS `Nome completo`,
  JOB_TITLE AS `Cargo`,
  HIRE_DATE AS `Data de início do cargo`,
  (
  SELECT DEPARTMENT_NAME 
  FROM hr.departments d
    WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID
  ) AS `Departamento`
FROM hr.employees AS e
  LEFT JOIN hr.jobs AS j
    ON e.JOB_ID = j.JOB_ID
ORDER BY `Nome completo` DESC , `Cargo`;
