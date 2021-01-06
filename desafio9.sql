SELECT CONCAT(e.FirstName,' ',e.LastName) AS 'Nome completo',
COUNT(o.employeeID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
ON e.EmployeeID = o.EmployeeID
GROUP BY CONCAT(e.FirstName)
ORDER BY COUNT(o.employeeID) ASC;
