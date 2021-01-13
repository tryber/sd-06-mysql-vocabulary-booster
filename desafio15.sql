USE hr;
DROP  PROCEDURE IF EXISTS buscar_media_por_cargo;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (cargo VARCHAR (40))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial' FROM hr.employees AS E
INNER JOIN hr.jobs AS  J ON J.JOB_ID = E.JOB_ID
WHERE J.JOB_TITLE = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');