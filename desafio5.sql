SELECT 
JOB_TITLE as Cargo,
round((MAX_SALARY-MIN_SALARY),2) AS `Variação Salarial`,
round((MIN_SALARY/12), 2) AS 'Média mínima mensal',
round((MAX_SALARY/12), 2) AS 'Média máxima mensal'
FROM HR.JOBS order by `Variação Salarial`, JOB_TITLE;
