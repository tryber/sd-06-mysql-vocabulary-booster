USE hr;
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(search_email VARCHAR(10))
RETURNS INT READS SQL DATA
BEGIN
  RETURN (
    SELECT COUNT(job_history.EMPLOYEE_ID) AS "Quantidade de empregos" FROM hr.job_history AS job_history
    WHERE job_history.EMPLOYEE_ID = (SELECT employees.EMPLOYEE_ID FROM hr.employees AS employees WHERE employees.EMAIL = search_email)
  );
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
