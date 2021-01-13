SELECT 
CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders AS ord
LEFT JOIN w3schools.employees AS emp
ON ord.EmployeeID = emp.EmployeeID
GROUP BY emp.EmployeeID
ORDER BY COUNT(*) ASC;
