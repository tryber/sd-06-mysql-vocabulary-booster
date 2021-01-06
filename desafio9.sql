SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS `Nome completo`,
COUNT(orders.EmployeeID) AS `Total de pedidos` FROM employees
INNER JOIN orders ON orders.EmployeeID = employees.EmployeeID
GROUP BY `Nome completo` ORDER BY `Total de pedidos`;
