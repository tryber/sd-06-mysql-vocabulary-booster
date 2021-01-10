SELECT 
j.JOB_TITLE as Cargo,
round((j.MAX_SALARY-j.MIN_SALARY),2) AS `Variação Salarial`,
round((j.MIN_SALARY/12), 2) AS 'Média mínima mensal',
round((j.MAX_SALARY/12), 2) AS 'Média máxima mensal'
FROM HR.JOBS AS j
join HR.EMPLOYEES as e
on j.job_id = e.JOB_ID
group by Cargo
order by `Variação Salarial`, Cargo;
