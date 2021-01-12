USE hr;
DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qty INT;
  SELECT COUNT(*) FROM hr.employees
  WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano INTO qty;
  RETURN qty;
END $$
DELIMITER ;
