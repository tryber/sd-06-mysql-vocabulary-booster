SELECT
  job_title AS 'Cargo',
  (MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY
  Cargo ASC,
  'Diferença entre salários máximo e mínimo' ASC;
