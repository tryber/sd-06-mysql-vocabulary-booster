Use hr
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nome_cargo VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(E.salary), 2) AS "Média Salarial"
  FROM hr.employees AS E
  INNER JOIN hr.jobs AS J ON E.job_id = J.job_id
  WHERE J.job_title = nome_cargo;
END $$ 

  DELIMITER ; 

CALL buscar_media_por_cargo('Programmer');

