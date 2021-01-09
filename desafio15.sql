DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100))
BEGIN
SELECT ROUND(AVG(E.SALARY),2) AS 'Média Salarial'
FROM employees AS E
INNER JOIN jobs AS J
ON E.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = job_title;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
