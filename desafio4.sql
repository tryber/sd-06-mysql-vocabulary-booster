SELECT TEMP.Cargo, ROUND(AVG(TEMP.SALARY), 2) AS 'Média Salarial' FROM (SELECT J.JOB_TITLE AS 'Cargo', E.SALARY FROM hr.jobs AS J INNER JOIN hr.employees AS E ON J.JOB_ID = E.JOB_ID) AS TEMP GROUP BY Cargo ORDER BY ROUND(AVG(TEMP.SALARY), 2) ASC , Cargo ASC;