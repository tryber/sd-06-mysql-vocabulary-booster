SELECT UPPER(CONCAT(N.FIRST_NAME, ' ', N.LAST_NAME)) AS `Nome completo`,

S.START_DATE AS `Data de início`,
n.SALARY AS `Salário`
FROM hr.job_history AS S
JOIN hr.employees AS N ON S.EMPLOYEE_ID = N.EMPLOYEE_ID
group by `Nome completo`
having `Data de início` between month('1900-02-31') and month('2020-03-31')


ORDER BY `Nome completo`, `Data de início`; 
