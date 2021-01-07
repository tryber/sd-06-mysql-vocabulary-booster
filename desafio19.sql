USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE quantidade INT;
  SELECT
    COUNT(*)
  FROM
    employees
  WHERE
    DATE_FORMAT(HIRE_DATE,'%m') = mes AND
    DATE_FORMAT(HIRE_DATE,'%Y') = ano
  INTO
    quantidade;
  RETURN quantidade;
END; $$

DELIMITER ;


SELECT
  exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987)
