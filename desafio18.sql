SELECT CONCAT(em.FIRST_NAME, " ", LAST_NAME) AS "Nome completo",
DATE_FORMAT(jh.START_DATE , '%d/%m/%Y') AS "Data de início",
DATE_FORMAT(jh.END_DATE , '%d/%m/%Y') AS "Data de rescisão",
ROUND(TIMESTAMPDIFF(DAY, jh.START_DATE, jh.END_DATE) / 365, 2) AS "Anos trabalhados"
FROM hr.employees AS em
INNER JOIN hr.job_history AS jh ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
