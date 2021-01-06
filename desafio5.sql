SELECT j.JOB_TITLE Cargo,
  j.MAX_SALARY - j.MIN_SALARY 'Variação Salarial',
  ROUND(AVG(j.MIN_SALARY)/12, 2) 'Média mínima mensal',
  ROUND(AVG(j.MAX_SALARY)/12, 2) 'Média máxima mensal'
FROM hr.jobs j
GROUP BY j.JOB_ID
ORDER BY j.MAX_SALARY - j.MIN_SALARY ASC, j.JOB_TITLE;
