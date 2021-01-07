SELECT t_job.JOB_TITLE AS Cargo,
MAX(t_emp.SALARY) - MIN(t_emp.SALARY) AS 'Variação Salarial',
ROUND(MIN(t_emp.SALARY), 2) AS 'Média mínima mensal',
ROUND(MAX(t_emp.SALARY), 2) AS 'Média máxima mensal'
FROM hr.employees AS t_emp
INNER JOIN hr.jobs AS t_job
ON t_emp.JOB_ID = t_job.JOB_ID
GROUP BY t_job.JOB_ID
ORDER BY MAX(t_emp.SALARY) - MIN(t_emp.SALARY), t_job.JOB_TITLE;
