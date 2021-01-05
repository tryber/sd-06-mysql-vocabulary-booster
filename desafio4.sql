SELECT t1.Cargo, t1.`Média salarial`,
CASE
WHEN t1.`Média salarial` BETWEEN 2000 AND 5800 THEN "Júnior"
WHEN t1.`Média salarial` BETWEEN 5801 AND 7500 THEN "Pleno"
WHEN t1.`Média salarial` BETWEEN 7501 AND 10500 THEN "Sênior"
WHEN t1.`Média salarial` > 10500 THEN "CEO"
END AS Senioridade
FROM(SELECT JOB_TITLE AS Cargo,
ROUND((SELECT AVG(SALARY) FROM hr.employees AS c WHERE c.JOB_ID = a.JOB_ID), 2) AS `Média salarial`
FROM hr.employees AS a INNER JOIN hr.jobs AS b ON a.JOB_ID = b.JOB_ID) AS t1
ORDER BY `Média salarial`, Cargo;
