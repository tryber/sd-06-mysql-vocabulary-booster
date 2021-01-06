SELECT
	JOB_TITLE Cargo,
  (MAX_SALARY - MIN_SALARY) 'Diferença entre salários máximo e mínimo'
FROM 
	hr.jobs
ORDER BY
  hr.jobs.MAX_SALARY - hr.jobs.MIN_SALARY ASC,
  hr.jobs.JOB_TITLE ASC;
