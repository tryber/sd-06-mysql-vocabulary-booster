SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
COUNT(orders.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees as employees
ON employees.EmployeeID = orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
-- Durante CodeReview acabei descobrindo que poderia utilizar o template literals para nomes compostos. Mudança sendo realizada em todos os arquivos necessários;
