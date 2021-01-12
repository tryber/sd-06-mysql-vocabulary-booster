USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT 
    CONCAT(first_name, ' ', last_name) AS 'Nome completo',
    DEPARTMENT_NAME AS 'Departamento',
    Job_Title AS 'Cargo'
FROM
    hr.job_history
        INNER JOIN
    hr.employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
        INNER JOIN
    hr.jobs ON jobs.JOB_ID = job_history.JOB_ID
        INNER JOIN
    hr.departments ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
WHERE
    hr.employees.EMAIL = 'NKOCHHAR'
ORDER BY `Departamento` , `Cargo`;
END $$

DELIMITER ;
