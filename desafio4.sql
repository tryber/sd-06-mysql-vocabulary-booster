SELECT hr_jobs.JOB_TITLE AS 'Cargo',
  ROUND(AVG(hr_emp.SALARY), 2) AS 'Média salarial',
  CASE
    WHEN AVG(hr_emp.SALARY) >= 2000 AND AVG(hr_emp.SALARY) <= 5800 THEN 'Júnior'
    WHEN AVG(hr_emp.SALARY) >= 5801 AND AVG(hr_emp.SALARY) <= 7500 THEN 'Pleno'
    WHEN AVG(hr_emp.SALARY) >= 7501 AND AVG(hr_emp.SALARY) <= 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS 'Senioridade'
FROM hr.jobs AS hr_jobs
INNER JOIN hr.employees AS hr_emp
ON hr_jobs.job_id = hr_emp.job_id
GROUP BY hr_jobs.JOB_TITLE
ORDER BY 'Média salarial', 'Cargo';
