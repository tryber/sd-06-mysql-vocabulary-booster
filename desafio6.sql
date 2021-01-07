SELECT CONCAT(e.FIRST_NAME," ", e.LAST_NAME) AS `Nome completo`, 
j.job_title AS `Cargo`, 
e.HIRE_DATE AS `Data de início do cargo`, 
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON j.job_id = e.job_id
INNER JOIN hr.departments AS d
ON d.department_id = e.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
