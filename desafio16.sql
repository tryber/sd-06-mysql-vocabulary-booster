USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_empregos INT;
SELECT 
    COUNT(*) AS 'total_empregos'
FROM
    hr.job_history
        INNER JOIN
    hr.employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE
    employees.EMAIL = email INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
