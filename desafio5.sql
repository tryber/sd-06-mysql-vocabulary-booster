SELECT
JOB_ID AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND(AVG(MIN_SALARY), 2) AS 'Média mínima mensal',
ROUND(AVG(MAX_SALARY), 2) AS 'Média máxima mensal'
FROM hr.jobs
GROUP BY JOB_ID
ORDER BY (MAX_SALARY - MIN_SALARY), JOB_ID;
