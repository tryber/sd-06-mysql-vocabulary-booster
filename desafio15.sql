DROP PROCEDURE IF EXISTS buscar_media_por_cargo;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN search_term VARCHAR(80))
BEGIN
  SELECT ROUND(AVG(SALARY), 2)  AS `Média salarial` FROM hr.employees
  WHERE JOB_ID = (SELECT JOB_ID FROM hr.jobs WHERE JOB_TITLE = search_term);
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
