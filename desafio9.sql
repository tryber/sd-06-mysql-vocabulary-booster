SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(e.FirstName) AS 'Total de pedidos'
FROM orders AS o
    INNER JOIN employees AS e
        ON e.EmployeeID = o.EmployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY COUNT(CONCAT(e.FirstName, ' ', e.LastName)) ASC;
