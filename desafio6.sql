SELECT concat(Emp.FIRST_NAME,' ', Emp.LAST_NAME) AS 'Nome completo', J.JOB_TITLE AS 'Cargo',
Emp.HIRE_DATE AS 'Data de início do cargo', D.DEPARTMENT_NAME AS 'Departamento'  FROM hr.jobs AS J
INNER JOIN hr.employees AS Emp  ON J.JOB_ID = Emp.JOB_ID 
INNER JOIN departments AS D ON D.MANAGER_ID = Emp.MANAGER_ID ORDER BY `Nome Completo` DESC, 'Cargo' ASC;