SELECT CONCAT(emp.FirstName, ' ', emp.LastName) AS `Nome completo`,
COUNT(o.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS o, w3schools.employees AS emp
WHERE emp.EmployeeID=o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;