SELECT CONCAT(em1.first_name, ' ', em1.last_name) AS 'Nome completo funcionário 1',
em1.SALARY AS 'Salário funcionário 1',
em1.phone_number AS 'Telefone funcionário 1',
CONCAT(em2.first_name, ' ', em2.last_name) AS 'Nome completo funcionário 2',
em2.SALARY AS 'Salário funcionário 2',
em2.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS em1
LEFT JOIN hr.employees AS em2
  ON em1.JOB_ID = em2.JOB_ID
WHERE em1.phone_number <> em2.phone_number
ORDER BY CONCAT(em1.first_name, ' ', em1.last_name) ASC, CONCAT(em2.first_name, ' ', em2.last_name) ASC;
