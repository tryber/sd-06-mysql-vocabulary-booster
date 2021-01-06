SELECT
    a.job_title AS 'Cargo',
	  ROUND(AVG(b.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN b.SALARY <= 5800  THEN 'Júnior'
        WHEN b.SALARY <= 7500 THEN 'Pleno'
        WHEN b.SALARY <= 10500  THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM hr.employees AS b
JOIN hr.jobs AS a
ON b.job_id = a.job_id
GROUP BY Cargo
ORDER BY ROUND(AVG(b.SALARY), 2), Cargo;
