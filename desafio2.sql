SELECT job.JOB_TITLE AS 'Cargo', 
CASE 
	WHEN job.MAX_SALARY >= 5000 AND job.MAX_SALARY <= 10000  THEN 'Baixo'
    WHEN job.MAX_SALARY >= 10001 AND job.MAX_SALARY <= 20000 THEN 'Médio'
    WHEN job.MAX_SALARY >= 20001 AND job.MAX_SALARY <= 30000 THEN 'Alto'
    ELSE 'Altíssimo'
END AS 'Nível'
FROM hr.jobs as job
order by job.JOB_TITLE;
