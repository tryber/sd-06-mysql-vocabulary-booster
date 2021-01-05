SELECT CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome Completo',
COUNT(O.EmployeeID) AS 'Total de Pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
ON O.EmployeeID = E.EmployeeID
GROUP BY E.EmployeeID
ORDER BY COUNT(O.EmployeeID);
