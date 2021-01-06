SELECT JOB_TITLE Cargo,
  j.MAX_SALARY - j.MIN_SALARY 'Variação Salarial',
  AVG(j.MIN_SALARY)/12 'Média mínima mensal',
  AVG(j.MAX_SALARY)/12 'Média máxima mensal'
FROM hr.jobs j
GROUP BY j.JOB_ID;
