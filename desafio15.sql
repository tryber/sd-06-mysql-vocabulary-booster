DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(150))
BEGIN
  SELECT
    ROUND(AVG(e1.SALARY),2) AS `Média salarial`
  FROM
    hr.employees AS e1
  INNER JOIN
    hr.jobs AS j1 ON e1.JOB_ID = j1.JOB_ID
  WHERE
    j1.JOB_TITLE = job;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
