SELECT CONCAT(FirstName, " ", LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS a
INNER JOIN w3schools.employees AS b ON a.EmployeeID = b.EmployeeID
GROUP BY a.EmployeeID
ORDER BY `Total de pedidos`;
