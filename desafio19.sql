DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(m INT, y INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE nr_of_hired_persons_in_n INT;
SELECT COUNT(*) FROM hr.employees AS e
WHERE MONTH(e.HIRE_DATE) = m AND YEAR(e.HIRE_DATE) = y
INTO nr_of_hired_persons_in_n;
RETURN nr_of_hired_persons_in_n;
END $$

DELIMITER ;
