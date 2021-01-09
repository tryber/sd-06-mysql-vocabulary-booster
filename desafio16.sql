use hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(mail varchar(50))
RETURNS INT READS SQL DATA
BEGIN
RETURN (SELECT COUNT(J.JOB_ID) AS `total de empregos` FROM hr.job_history AS J
WHERE J.EMPLOYEE_ID = (SELECT E.EMPLOYEE_ID FROM hr.employess AS E WHERE E.EMAIL = mail));
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario(NKOCHHAR);
