SELECT
	hr_jobs.JOB_TITLE AS 'Cargo',
  (hr_jobs.MAX_SALARY - hr_jobs.MIN_SALARY) AS 'Variação Salarial',
  ROUND((hr_jobs.MIN_SALARY / 12), 2) AS 'Média mínima mensal',
  ROUND((hr_jobs.MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM hr.jobs AS hr_jobs
ORDER BY (MAX_SALARY - MIN_SALARY) ASC, JOB_TITLE ASC;
