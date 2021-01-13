USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
	IN cargo VARCHAR(50)
)

BEGIN
	SELECT ROUND(AVG(em.SALARY), 2) AS 'Média salarial'
	FROM employees AS em
	INNER JOIN jobs AS jo
	ON jo.JOB_ID = em.JOB_ID
	WHERE jo.JOB_TITLE = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
