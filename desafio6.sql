SELECT JOB_TITLE AS 'Cargo',
MAX_SALARY - MIN_SALARY AS 'Variação salarial',
round((MIN_SALARY/12), 2) AS 'Média mínima mensal',
round((MAX_SALARY/12), 2) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY), JOB_TITLE;
