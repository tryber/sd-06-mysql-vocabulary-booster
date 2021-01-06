SELECT
    UPPER(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
    jobh.START_DATE AS 'Data de início',
    emp.SALARY AS 'Salário'
FROM hr.employees AS emp
JOIN hr.job_history AS jobh
ON jobh.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(jobh.START_DATE) REGEXP "[01|02|03]"
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME), jobh.START_DATE;
