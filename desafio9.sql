SELECT CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome Completo',
COUNT(O.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
ON O.EmployeeID = E.EmployeeID
GROUP BY CONCAT(E.FirstName, ' ', E.LastName)
ORDER BY COUNT(O.EmployeeID);
