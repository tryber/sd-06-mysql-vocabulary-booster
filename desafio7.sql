SELECT concat(Emp.FIRST_NAME,' ', Emp.LAST_NAME) AS 'Nome completo',
HIS.START_DATE AS 'Data de início', Emp.SALARY AS 'Salário'  FROM hr.job_history AS HIS 
INNER JOIN hr.employees AS Emp  ON HIS.EMPLOYEE_ID = Emp.EMPLOYEE_ID 
WHERE MONTH(HIS.START_DATE) IN (01,02,03)
ORDER BY `Nome Completo`, `Data de Início`;
