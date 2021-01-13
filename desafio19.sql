USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month INT, year INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE hired_employees INT;
  SELECT COUNT *
    FROM hr.job_history jh
  WHERE MONTH(jh.START_DATE) = month AND YEAR(jh.START_DATE) = year
    INTO hired_employees;
  RETURN hired_employees;
END $$
DELIMITER ;
