SELECT
    UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) 'Nome completo',
    h.START_DATE 'Data de início',
    e.SALARY 'Salário'
 FROM hr.job_history h
    LEFT JOIN hr.employees e
    ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE MONTH(h.START_DATE) IN (1,2,3)
  ORDER BY e.FIRST_NAME, e.LAST_NAME, h.START_DATE;
