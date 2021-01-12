USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(ano INT, mes INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_contratados INT;
SELECT 
    COUNT(*)
FROM
    hr.employees
WHERE
    YEAR(HIRE_DATE) = ano
        AND MONTH(HIRE_DATE) = mes INTO total_contratados;
RETURN total_contratados;
END $$

DELIMITER ;
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(1987, 06);
