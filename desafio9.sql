SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS `Nome completo`,
count(orders.employeeid) AS `Total de pedidos`
FROM ((w3schools.employees
INNER JOIN w3schools.orders
ON orders.employeeid = employees.employeeid)
group by orders.employeeid
ORDER BY `Total de pedidos` ASC;
