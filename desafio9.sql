SELECT CONCAT(E.FirstName,' ', E.LastName) AS 'Nome completo',
(SELECT COUNT(O.OrderID) FROM orders AS O WHERE O.EmployeeID = E.EmployeeID) AS 'Total de pedidos'
FROM employees AS E
WHERE (SELECT COUNT(O.OrderID) FROM orders AS O WHERE O.EmployeeID = E.EmployeeID) > 0
ORDER BY `Total de pedidos`;
