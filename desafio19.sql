USE hr;
DROP Function IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hired_month INT, hired_year INT)
RETURNS INT READS SQL DATA
BEGIN
SELECT COUNT(*) FROM hr.employees 
WHERE MONTH(HIRE_DATE) = hired_month AND YEAR(HIRE_DATE) = hired_year;
END$$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) FROM hr.employees;

SELECT * FROM hr.employees WHERE MONTH(HIRE_DATE) = 6 AND YEAR(HIRE_DATE) = 1987;
