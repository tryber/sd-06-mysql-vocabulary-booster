SELECT
CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
COUNT(ord.OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS emp
JOIN w3schools.orders AS ord
ON emp.EmployeeID = ord.EmployeeID
GROUP BY emp.EmployeeID
ORDER BY COUNT(ord.OrderID);
