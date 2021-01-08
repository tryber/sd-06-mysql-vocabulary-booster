DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(search_email VARCHAR(80))
RETURNS TINYINT READS SQL DATA
BEGIN
  RETURN (
    SELECT COUNT(jh.EMPLOYEE_ID) AS 'Quantidade de empregos' FROM hr.job_history AS jh
    WHERE jh.EMPLOYEE_ID = (SELECT e.EMPLOYEE_ID FROM hr.employees AS e WHERE e.EMAIL = search_email)
  );
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
