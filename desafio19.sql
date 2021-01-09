DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT
BEGIN
DECLARE total INT;
SELECT COUNT(*)
FROM hr.employees
WHERE SUBSTRING(HIRE_DATE, 1, 4) = ano 
AND SUBSTRING(HIRE_DATE, 7, 2) = mes INTO total;
RETURN total;
END $$
DELIMITER ;
