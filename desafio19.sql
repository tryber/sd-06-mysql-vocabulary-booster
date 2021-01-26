USE hr;
DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hire_month INT, hire_year INT)
RETURNS INT READS SQL DATA
BEGIN
RETURN (SELECT COUNT(*) FROM hr.employees WHERE YEAR(hire_date) = hire_year AND MONTH(hire_date) = hire_month);
END $$
DELIMITER ;
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
