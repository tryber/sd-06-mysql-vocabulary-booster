SELECT CONCAT(em.FirstName, ' ', em.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.employees AS em
INNER JOIN w3schools.orders AS od ON em.EmployeeID = od.EmployeeID
GROUP BY 1
ORDER BY 2;
