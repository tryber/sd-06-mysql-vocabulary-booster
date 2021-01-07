SELECT (CONCAT(em.first_name, ' ', em.last_name)) AS 'Nome completo funcionário 1',
  em.SALARY AS 'Salário funcionário 1',
  em.PHONE_NUMBER AS 'Telefone funcionário 1',
  (CONCAT(em2.first_name, ' ', em2.last_name)) AS 'Nome completo funcionário 2',
  em2.SALARY AS 'Salário funcionário 2',
  em2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS em
  INNER JOIN hr.employees AS em2
    ON em.JOB_ID = em2.JOB_ID
WHERE em.EMPLOYEE_ID <> em2.EMPLOYEE_ID
ORDER BY (CONCAT(em.first_name, ' ', em.last_name)) ASC, (CONCAT(em2.first_name, ' ', em2.last_name)) ASC;
