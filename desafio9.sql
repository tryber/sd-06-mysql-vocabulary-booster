SELECT 
    CONCAT(employ.FirstName, ' ', employ.LastName) AS 'Nome completo',
    COUNT(employ.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.orders AS orders
        INNER JOIN
    w3schools.employees AS employ ON orders.EmployeeID = employ.EmployeeID
GROUP BY employ.EmployeeID
ORDER BY COUNT(employ.EmployeeID);
