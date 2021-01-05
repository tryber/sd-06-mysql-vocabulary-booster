SELECT UCASE(CONCAT(em.FIRST_NAME, " ", em.LAST_NAME)) AS "Nome completo",
jh.START_DATE AS "Data de início",
em.SALARY AS "Salário"
FROM hr.employees AS em
INNER JOIN hr.job_history AS jh
ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE SUBSTRING(jh.START_DATE, 6, 2) BETWEEN 1 AND 3;
