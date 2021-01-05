SELECT
    job_title AS 'Cargo',
    CASE
        WHEN MIN_SALARY  THEN (MAX_SALARY -  MIN_SALARY)
        ELSE 'bla'
    END AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY (MAX_SALARY -  MIN_SALARY) ASC, job_title ASC;
