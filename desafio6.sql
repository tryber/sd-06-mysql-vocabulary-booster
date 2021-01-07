SELECT concat(Emp.FIRST_NAME,' ', Emp.LAST_NAME) AS 'Nome completo', J.JOB_TITLE AS 'Cargo',
HIS.START_DATE AS 'Data de início do cargo', D.DEPARTMENT_NAME AS 'Departamento'  FROM hr.job_history AS HIS 
INNER JOIN hr.employees AS Emp  ON HIS.EMPLOYEE_ID = Emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS J ON J.JOB_ID = HIS.JOB_ID
INNER JOIN departments AS D ON D.DEPARTMENT_ID = HIS.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo` ASC;
