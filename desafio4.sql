SELECT
jobs.JOB_TITLE AS 'Cargo',
@SalaryAverage := (SELECT ROUND(AVG(employees.SALARY), 2) FROM employees WHERE employees.JOB_ID = jobs.JOB_ID) AS 'Média salarial',
CASE
WHEN @SalaryAverage BETWEEN 2000.00 AND 5800.00 THEN 'Júnior'
WHEN @SalaryAverage BETWEEN 5801.00 AND 7500.00 THEN 'Pleno'
WHEN @SalaryAverage BETWEEN 7501.00 AND 10500.00 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM jobs
ORDER BY (SELECT ROUND(AVG(employees.SALARY), 2) FROM employees WHERE employees.JOB_ID = jobs.JOB_ID) ASC;
