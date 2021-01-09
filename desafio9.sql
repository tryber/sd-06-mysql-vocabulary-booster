SELECT * FROM w3schools.employees;
SELECT * FROM w3schools.orders;

SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) as `Nome completo`,
    count(o.EmployeeID) AS `Total de pedidos`
FROM
    w3schools.employees AS e
        inner join
    w3schools.orders AS o ON o.EmployeeID = e.EmployeeID
    group by `Nome completo`;
