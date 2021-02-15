SELECT
CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders o
LEFT JOIN w3schools.employees e
ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY `Total de pedidos`;
