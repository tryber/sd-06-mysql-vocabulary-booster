SELECT CONCAT(t_emp.FirstName, ' ', t_emp.LastName) AS 'Nome completo',
COUNT(t_orders.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS t_emp
INNER JOIN w3schools.orders AS t_orders ON t_orders.EmployeeID = t_emp.EmployeeID
GROUP BY t_emp.EmployeeID
ORDER BY COUNT(t_orders.EmployeeID);
