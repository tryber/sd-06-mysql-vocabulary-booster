SELECT
    CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
    COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS ord
JOIN w3schools.employees AS emp
ON emp.EmployeeID = ord.EmployeeID
GROUP BY ord.EmployeeID
ORDER BY `Total de pedidos`;
