SELECT
    job_title AS 'Cargo',
    CASE
        WHEN MAX_SALARY <= 10000 THEN 'Baixo'
        WHEN MAX_SALARY <= 20000 THEN 'Médio'
        WHEN MAX_SALARY <= 30000 THEN 'Alto'
        ELSE 'Altíssimo'
    END AS 'Nível'
FROM hr.jobs
ORDER BY job_title;
