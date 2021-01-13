DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes TINYINT, ano INT)
RETURNS TINYINT READS SQL DATA
BEGIN
  RETURN (
    SELECT COUNT(e.EMPLOYEE_ID) AS 'Quantidade de pessoas empregadas' FROM hr.employees AS e
    WHERE MONTH(e.HIRE_DATE) = mes AND YEAR(e.HIRE_DATE) = ano
  );
END $$
DELIMITER ;
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 17);
