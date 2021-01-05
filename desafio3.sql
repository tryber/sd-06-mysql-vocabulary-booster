SELECT job_title AS 'Cargo', (max_salary - min_salary) AS `Diferenca entre salários máximo e mínimo`
FROM hr.jobs
ORDER BY `Diferenca entre salários máximo e mínimo`;
