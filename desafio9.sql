SELECT CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
COUNT(O.EmployeeID) AS 'Total de pedidos'
FROM  w3schools.employees AS E,
w3schools.orders AS O
WHERE E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos`;
