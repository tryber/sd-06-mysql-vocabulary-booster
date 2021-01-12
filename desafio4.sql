SELECT 
    JOB_TITLE AS 'Cargo',
    ROUND(AVG(SALARY), 2) AS 'Média salarial',
    CASE
        WHEN
            ROUND(AVG(SALARY), 2) > 2000
                AND ROUND(AVG(SALARY), 2) <= 5800
        THEN
            'Júnior'
        WHEN
            ROUND(AVG(SALARY), 2) > 5800
                AND ROUND(AVG(SALARY), 2) <= 7500
        THEN
            'Pleno'
        WHEN
            ROUND(AVG(SALARY), 2) > 7500
                AND ROUND(AVG(SALARY), 2) <= 10500
        THEN
            'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs
        INNER JOIN
    hr.employees ON jobs.JOB_ID = employees.JOB_ID
GROUP BY JOB_TITLE
ORDER BY `Média salarial` , `Cargo`;
