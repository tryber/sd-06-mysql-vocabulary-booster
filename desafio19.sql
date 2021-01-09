USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(E.EMPLOYEE_ID) AS 'Foram contratadas' INTO result FROM hr.employees AS E   
WHERE MONTH(E.HIRE_DATE) = mes and YEAR(E.HIRE_DATE) = ano;         
RETURN result;
END $$
DELIMITER ;
