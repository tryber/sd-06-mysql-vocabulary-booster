USE hr;
DELIMITER $$
create function buscar_quantidade_de_empregos_por_funcionario(email_employees char(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE id_employee INT;
DECLARE result INT;
SELECT EMPLOYEE_ID FROM hr.employees WHERE EMAIL = email_employees
INTO id_employee;
SELECT COUNT(*) FROM hr.job_history WHERE EMPLOYEE_ID = id_employee
INTO result;
RETURN result;
END $$
DELIMITER ;
