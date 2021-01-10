USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nome_do_cargo TINYTEXT)
BEGIN
SELECT ROUND(AVG(E.SALARY), 2) AS 'Média salarial'
FROM employees AS E, jobs AS J
WHERE J.JOB_ID = E.JOB_ID AND J.JOB_TITLE = nome_do_cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
