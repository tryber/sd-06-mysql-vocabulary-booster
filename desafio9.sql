SELECT
CONCAT(empl.FirstName, ' ', empl.LastName) AS `Nome completo`,
COUNT(orders.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees AS empl
ON orders.EmployeeID = empl.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`
