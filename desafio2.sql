USE hr;

SELECT JOB_TITLE as Cargo,
CASE
	WHEN max_salary > 5000 AND max_salary <= 10000 THEN "Baixo"
	WHEN max_salary > 10000 AND max_salary <= 20000 THEN "Médio"
	WHEN max_salary > 20000 AND max_salary <= 30000 THEN "Baixo"
	WHEN max_salary > 30000 THEN "Altíssimo"
	ELSE NULL
END AS "Nível"
FROM jobs
ORDER BY Cargo;
