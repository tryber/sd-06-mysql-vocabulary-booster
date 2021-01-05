SELECT CONCAT(emp.FirstName,' ',emp.LastName) AS 'Nome completo',
COUNT(ord.EmployeeID) AS 'Total de Pedidos'
FROM w3schools.employees AS emp
INNER JOIN w3schools.orders AS ord
ON emp.EmployeeID = ord.EmployeeID
GROUP BY emp.FirstName
ORDER BY COUNT(ord.EmployeeID);
