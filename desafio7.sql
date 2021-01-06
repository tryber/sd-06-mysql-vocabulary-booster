SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
  e.HIRE_DATE 'Data de início',
  e.SALARY 'Salário'
FROM hr.employees e
ORDER BY e.FIRST_NAME, e.LAST_NAME, e.HIRE_DATE;
