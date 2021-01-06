SELECT  JOB_TITLE AS 'Cargo', ROUND(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
Round(MIN_SALARY/12, 2) AS 'Média mínima mensal', Round(MAX_SALARY/12, 2) AS 'Média máxima mensal'
FROM hr.jobs  ORDER BY `Variação Salarial`, JOB_TITLE;