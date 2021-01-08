SELECT concat(e.FirstName, ' ', e.LastName) AS 'Nome completo',
count(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN orders AS o
ON e.EmployeeID = o.EmployeeID
group by o.EmployeeID
order by `Total de pedidos`;
