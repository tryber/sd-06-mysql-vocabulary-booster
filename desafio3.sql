USE hr;

SELECT JOB_TITLE as Cargo,
(MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM jobs
ORDER BY 'Diferença entre salários máximo e mínimo', Cargo;
