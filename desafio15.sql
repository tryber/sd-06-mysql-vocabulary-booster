USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
IN cargo VARCHAR(100)
)
BEGIN
SELECT ROUND(AVG(EMP.SALARY), 2)
FROM employees AS EMP, jobs AS J
WHERE EMP.JOB_ID=J.JOB_ID AND J.JOB_TITLE=cargo
GROUP BY EMP.JOB_ID;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
