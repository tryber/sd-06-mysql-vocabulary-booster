USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_Empregos INT;
  SELECT COUNT(*)
  FROM hr.employees AS E
  INNER JOIN hr.job_history AS JH
  ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  WHERE E.EMAIL = email
  INTO quantidade_Empregos;
  RETURN quantidade_Empregos;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("LDEHAAN") AS `total_empregos`;
