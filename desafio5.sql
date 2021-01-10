SELECT hr.jobs.JOB_TITLE as `Cargo`,
round(hr.jobs.MAX_SALARY-hr.jobs.MIN_SALARY) AS `Variação Salarial`,
round((hr.jobs.MIN_SALARY/12), 2) AS 'Média mínima mensal',
round((hr.jobs.MAX_SALARY/12), 2) AS 'Média máxima mensal'
FROM hr.jobs order by `Variação Salarial`, hr.jobs.JOB_TITLE;
