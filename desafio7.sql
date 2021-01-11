SELECT UCASE(CONCAT(e.FIRST_NAME, " ", e.LAST_NAME)) AS `Nome completo`,
  HIRE_DATE AS `Data de início`,
  SALARY AS `Salário`
FROM hr.job_history jh 
  LEFT JOIN hr.employees e 
    ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Data de início`;