SELECT
CONCAT(firstName, ' ', lastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.employees
INNER JOIN orders ON orders.EmployeeID = employees.EmployeeID 
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
