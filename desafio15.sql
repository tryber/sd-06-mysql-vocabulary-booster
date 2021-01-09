use hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(in JOB varchar(50))
BEGIN
SELECT ROUND(AVG(E.SALARY), 2) AS `Média salarial`
FROM hr.employees AS E
INNER JOIN hr.jobs as J ON E.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = JOB
END $$

DELIMITER ;
