USE hr;
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN EmplEmail varchar(100))

SELECT COUNT(EMAIL)
FROM hr.employees
INNER JOIN hr.job_history
ON hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
WHERE EMAIL = EmplEmail;

CALL buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
