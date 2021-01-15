USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(chosen_month INT, chosen_year INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE hired_employees INT;
  SELECT
    COUNT(e.HIRE_DATE) 'que foram contratadas'
    FROM hr.employees e
  WHERE MONTH(e.HIRE_DATE) = chosen_month AND YEAR(e.HIRE_DATE) = chosen_year
    INTO hired_employees;
  RETURN hired_employees;
END $$
DELIMITER ;
