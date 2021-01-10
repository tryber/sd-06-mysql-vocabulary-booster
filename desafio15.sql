USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo CHAR(50))
    BEGIN
        SELECT
            ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
        FROM hr.employees AS emp, hr.jobs AS jobs
        WHERE jobs.JOB_TITLE = cargo AND emp.JOB_ID = jobs.JOB_ID;
    END $$
DELIMITER ;
