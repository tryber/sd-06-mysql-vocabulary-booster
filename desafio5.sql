SELECT  J.JOB_TITLE AS 'Cargo', ROUND(J.MAX_SALARY - J.MIN_SALARY) AS 'Variação Salarial',
Round(J.MIN_SALARY/12, 2) AS 'Média mínima mensal', Round(J.MAX_SALARY/12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS J INNER JOIN hr.employees AS Emp  
ON J.JOB_ID = Emp.JOB_ID GROUP BY J.JOB_TITLE ORDER BY J.MAX_SALARY - J.MIN_SALARY, J.JOB_TITLE;
