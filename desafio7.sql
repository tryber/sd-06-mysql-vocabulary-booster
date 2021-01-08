SELECT CONCAT(UPPER(e.FIRST_NAME)," ", UPPER(e.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início do cargo`,
e.salary AS `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE month(jh.START_DATE) in (01,02,03) 
ORDER BY `Nome completo`, jh.START_DATE;
