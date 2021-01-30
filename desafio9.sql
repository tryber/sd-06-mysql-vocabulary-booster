SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(ord.OrderID) AS 'Total de pedidos' 
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS ord
ON e.EmployeeID = ord.EmployeeID
GROUP BY `Nome completo`
ORDER BY COUNT(ord.OrderID);
