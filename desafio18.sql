SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)'Nome completo',
  DATE_FORMAT(jh.START_DATE, '%d/%m/%y') 'Data de início',
  DATE_FORMAT(jh.END_DATE, '%d/%m/%y') 'Data de rescisão',
  ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) 'Anos trabalhados'
FROM hr.job_history jh
  INNER JOIN hr.employees e
    ON jh.employee_id = e.employee_id
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), `Anos trabalhados`;
