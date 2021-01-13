SELECT 
CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
COUNT(ord.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders as ord
INNER JOIN w3schools.employees as emp ON ord.EmployeeID = emp.EmployeeID
GROUP BY ord.EmployeeID ORDER BY COUNT(ord.EmployeeID);
