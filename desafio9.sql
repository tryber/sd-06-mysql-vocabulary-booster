SELECT CONCAT(employees.firstname, ' ', employees.lastname) AS `Nome completo`,
count(orders.employeeid) AS `Total de pedidos`
FROM (w3schools.employees
INNER JOIN w3schools.orders
ON orders.employeeid = employees.employeeid)
group by orders.employeeid
ORDER BY count(orders.employeeid) ASC;
