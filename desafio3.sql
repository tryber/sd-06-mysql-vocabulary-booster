SELECT
JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máxima e minimo'
FROM hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY), JOB_TITLE;
