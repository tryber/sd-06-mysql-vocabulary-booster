DELIMITER $ $ CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(30)) BEGIN
SELECT
  ROUND(AVG(employees.SALARY), 2)  as "Média salarial"
FROM
  hr.employees
  INNER JOIN hr.jobs ON employees.JOB_ID = jobs.JOB_ID
WHERE
  JOB_TITLE = Cargo;
END $ $ DELIMITER;
