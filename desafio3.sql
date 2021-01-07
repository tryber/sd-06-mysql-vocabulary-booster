SELECT job_title AS `Cargo`, max_salary - min_salary AS `Diferença entre salários` 
FROM hr.jobs
ORDER BY `Diferença entre salários`, `Cargo`;
