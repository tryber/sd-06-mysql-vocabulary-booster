SELECT 
j.JOB_TITLE as Cargo,
(j.MAX_SALARY-j.MIN_SALARY) AS `Variação Salarial`,
round((j.MIN_SALARY/12), 2) AS 'Média mínima mensal',
round((j.MAX_SALARY/12), 2) AS 'Média máxima mensal'
FROM HR.JOBS AS j
join HR.EMPLOYEES as e
on j.job_id = e.JOB_ID
order by `Variação Salarial`, Cargo;
