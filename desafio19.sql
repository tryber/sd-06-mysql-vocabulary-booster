DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*)
FROM hr.employees
WHERE SUBSTRING(HIRE_DATE, 1, 4) = mes 
AND SUBSTRING(HIRE_DATE, 7, 2) = ano INTO total;
RETURN total;
END $$
DELIMITER ;
