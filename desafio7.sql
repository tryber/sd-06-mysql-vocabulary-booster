SELECT UCASE(CONCAT(e.FIRST_NAME, " ", e.LAST_NAME)) AS `Nome completo`,
  START_DATE AS `Data de início`,
  SALARY AS `Salário`
FROM hr.job_history jh
  INNER JOIN hr.employees e
    ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
