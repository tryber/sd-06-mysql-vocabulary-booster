USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(query_month INT, query_year INT)
RETURNS INT READS SQL DATA
BEGIN
RETURN (SELECT COUNT(*) FROM hr.employees WHERE YEAR(hire_date) = query_year AND MONTH(hire_date) = query_month);
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
