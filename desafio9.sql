SELECT CONCAT(c.FirstName, ' ', c.LastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS c
JOIN w3schools.orders AS o ON o.EmployeeID = c.EmployeeID
GROUP BY o.EmployeeID
ORDER BY 2;
