SELECT 
CONCAT(w3schools.employees.FirstName, ' ', w3schools.employees.LastName) AS `Nome completo`,
COUNT(w3schools.orders.EmployeeID) AS `Total de Pedidos`

FROM w3schools.employees, w3schools.orders
WHERE w3schools.employees.EmployeeID = w3schools.orders.EmployeeID
GROUP BY  CONCAT(w3schools.employees.FirstName, ' ', w3schools.employees.LastName)
-- GROUP BY `Nome completo`
ORDER BY COUNT(w3schools.orders.EmployeeID)
-- ORDER `Total de Pedidos`
