SELECT j.JOB_TITLE as 'Cargo',
(j.MAX_SALARY - j.MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs as j
ORDER BY (j.MAX_SALARY - j.MIN_SALARY), Cargo;
