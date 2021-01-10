DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(40))
BEGIN
SELECT CONCAT(em.FIRST_NAME, " ", em.LAST_NAME) AS "Nome completo",
de.DEPARTMENT_NAME AS "Departamento",
jo.JOB_TITLE AS "Cargo"
FROM hr.employees AS em
INNER JOIN hr.job_history AS jh ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS de ON jh.DEPARTMENT_ID = de.DEPARTMENT_ID
INNER JOIN hr.jobs AS jo ON jh.JOB_ID = jo.JOB_ID
WHERE em.EMAIL = email
ORDER BY Departamento, Cargo;
END $$
DELIMITER ;
