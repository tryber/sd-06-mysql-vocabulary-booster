select * from hr.employees;
SELECT j.JOB_ID AS "Cargo",
ROUND(AVG(e.SALARY), 2) AS "Média salarial",
CASE
WHEN ROUND(AVG(e.SALARY),2) BETWEEN 2000 AND 5800 THEN "Júnior"
WHEN ROUND(AVG(e.SALARY),2) BETWEEN 5801 AND 7500 THEN "Pleno"
WHEN ROUND(AVG(e.SALARY),2) BETWEEN 7501 AND 10500 THEN "Sênior"
ELSE "CEO"
END AS "Senioridade"
FROM hr.employees AS e
INNER JOIN hr.jobs as j
ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY "Média salarial", "Cargo";
