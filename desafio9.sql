SELECT CONCAT(E.FirstName, " ", E.LastName) AS `Nome completo`,
COUNT(O.EmployeeID) AS `Total de pedidos`
FROM w3schools.employees AS E
JOIN w3schools.orders AS O ON O.EmployeeID = E.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
