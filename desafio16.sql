DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email CHAR(50))
 RETURNS INT deterministic 
 BEGIN
  DECLARE
   RESULT INT;
SELECT
  COUNT(job_history.JOB_ID)
FROM
  hr.job_history
  INNER JOIN hr.employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE
  email = employees.EMAIL INTO RESULT;
RETURN RESULT;
END $$
 DELIMITER ;
SELECT
  buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
