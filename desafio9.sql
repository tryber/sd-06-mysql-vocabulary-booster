SELECT concat(FirstName, " ",LastName) AS "Nome completo",
count(OrderID) AS "Total de pedidos"
FROM w3schools.employees
JOIN w3schools.orders
ON w3schools.employees.EmployeeID = w3schools.orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
