SELECT jobs.JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY 'Diferença entre salários máximo e mínimo', 'Cargo';
-- (CASE
--     WHEN  IS NULL THEN Country
--     ELSE 'Diferença entre salários máximo e mínimo'
-- END);
