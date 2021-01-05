SELECT job_title AS 'Cargo', ROUND(AVG(emp.salary), 2) AS 'Média Salarial',
	CASE 
		WHEN ROUND(AVG(emp.salary), 2) BETWEEN 2000 AND 5800
			THEN 'Júnior'
		WHEN ROUND(AVG(emp.salary), 2) BETWEEN 5801 AND 7500
			THEN 'Pleno'
		WHEN ROUND(AVG(emp.salary), 2) BETWEEN 7501 AND 10500
			THEN 'Sênior'
		ELSE 'CEO'
	END AS 'Senioridade'
FROM hr.jobs job
	INNER JOIN hr.employees AS emp
	ON job.job_id = emp.job_id
GROUP BY job_title
ORDER BY 'Média salarial', job_title;
