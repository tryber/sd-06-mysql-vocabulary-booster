USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(searched_month INT, searched_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hire_count INT;

SELECT COUNT(*)
FROM hr.employees
WHERE MONTH(hire_date) = searched_month AND YEAR(hire_date) = searched_year
INTO hire_count;

RETURN hire_count;
END $$

DELIMITER ;
