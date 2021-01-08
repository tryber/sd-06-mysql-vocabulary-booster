SELECT 
CONCAT(e.FIRST_NAME," ", e.LAST_NAME) AS `Nome completo`, 
j.job_title AS `Cargo`, 
jh.start_date AS `Data de início do cargo`, 
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS jh
LEFT JOIN hr.jobs AS j
ON jh.JOB_ID = j.JOB_ID
LEFT JOIN hr.departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, j.job_title;
