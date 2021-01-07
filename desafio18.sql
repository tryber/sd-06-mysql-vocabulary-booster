SELECT
  CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME) AS `Nome completo`,
  DATE_FORMAT(j1.START_DATE,'%d/%m/%Y') AS `Data de início`,
  DATE_FORMAT(j1.END_DATE,'%d/%m/%Y') AS `Data de rescisão`,
  ROUND(DATEDIFF(j1.END_DATE, j1.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM
  hr.job_history AS j1
JOIN
  hr.employees AS e1 ON j1.EMPLOYEE_ID = e1.EMPLOYEE_ID
ORDER BY
  `Nome Completo` ASC,
  `Anos Trabalhados` ASC;
