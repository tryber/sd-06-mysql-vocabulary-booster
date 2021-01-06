SELECT 
    job.JOB_TITLE AS 'Cargo',
    ROUND(AVG(emplo.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(emplo.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(emplo.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(emplo.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS emplo
        INNER JOIN
    hr.jobs AS job ON emplo.JOB_ID = job.JOB_ID
GROUP BY job.JOB_TITLE
ORDER BY ROUND(AVG(emplo.SALARY), 2) , job.JOB_TITLE;
