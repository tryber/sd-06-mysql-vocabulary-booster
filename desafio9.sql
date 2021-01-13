SELECT CONCAT(e.FirstName, ' ', e.LastName) "Nome completo",
    COUNT(e.FirstName) 'Total de pedidos'
FROM w3schools.employees e
    INNER JOIN w3schools.orders o
        ON e.EmployeeID = o.EmployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY COUNT(CONCAT(e.FirstName, ' ', e.LastName)) ASC;
