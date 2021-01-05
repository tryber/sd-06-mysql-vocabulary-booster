SELECT job_title AS Cargo,
max_salary - min_salary AS "Diferença entre salário máximos e mínimo"
FROM hr.jobs
ORDER BY max_salary - min_salary ASC, Cargo ASC;
