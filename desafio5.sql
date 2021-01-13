SELECT JOB_TITLE as "Cargo", ROUND((MAX_SALARY - MIN_SALARY), 0) as "Variação Salarial",
ROUND((MIN_SALARY / 12), 2) AS "Média mínima mensal",
ROUND((MAX_SALARY / 12), 2) AS "Média máxima mensal"
FROM jobs order by ROUND((MAX_SALARY - MIN_SALARY), 2), JOB_TITLE;
