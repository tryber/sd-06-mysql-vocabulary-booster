USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hired_month INT, hired_year INT)
RETURNS INT READS SQL DATA
BEGIN
				
END$$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) FROM hr.employees;