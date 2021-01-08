USE hr;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(cargo char(80))
BEGIN
SELECT ROUND(AVG(E.SALARY), 2) as `Média salarial`
FROM employees AS E
INNER JOIN jobs AS J ON J.JOB_ID = E.JOB_ID
WHERE J.JOB_TITLE = cargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
