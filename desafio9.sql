SELECT CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
COUNT(O.EmployeeID) AS `Total de pedidos`
FROM employees AS E
INNER JOIN orders AS O on O.EmployeeID = E.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
