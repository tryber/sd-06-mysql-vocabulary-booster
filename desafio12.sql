SELECT
CONCAT(t_emp1.FIRST_NAME, ' ', t_emp1.LAST_NAME) AS 'Nome completo funcionário 1',
t_emp1.SALARY AS 'Salário funcionário 1',
t_emp1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(t_emp2.FIRST_NAME, ' ', t_emp2.LAST_NAME) AS 'Nome completo funcionário 2',
t_emp2.SALARY AS 'Salário funcionário 2',
t_emp2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS t_emp1, hr.employees AS t_emp2
WHERE CONCAT(t_emp1.FIRST_NAME, ' ', t_emp1.LAST_NAME) <> CONCAT(t_emp2.FIRST_NAME, ' ', t_emp2.LAST_NAME)
AND t_emp1.JOB_ID = t_emp2.JOB_ID
ORDER BY CONCAT(t_emp1.FIRST_NAME, ' ', t_emp1.LAST_NAME), CONCAT(t_emp2.FIRST_NAME, ' ', t_emp2.LAST_NAME);
