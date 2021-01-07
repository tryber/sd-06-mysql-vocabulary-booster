SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
COUNT(orders.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS employees
INNER JOIN w3schools.orders AS orders
ON employees.EmployeeID = orders.EmployeeID
GROUP BY CONCAT(employees.FirstName, ' ', employees.LastName)
ORDER BY COUNT(orders.EmployeeID);
