SELECT JOB_TITLE AS "Cargo",
MAX_SALARY - MIN_SALARY AS "Variação Salarial",
ROUND(MIN_SALARY/12,2) AS "Média mínima mensal",
ROUND(MAX_SALARY/12,2) AS "Média máxima mensal"
FROM hr.jobs, hr.employees
WHERE hr.jobs.JOB_ID = hr.employees.JOB_ID
GROUP BY hr.jobs.JOB_ID
ORDER BY `Variação Salarial`, Cargo;
