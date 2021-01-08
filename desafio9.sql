select concat(employees.FirstName, ' ', employess.LastName) as `Nome completo`,
count(orders.EmployeeID) as `Total de pedidos`
from w3schools.orders
inner join employess on employess.EmployeeID = orders.EmployeeID
group by orders.EmployeeID
order by count(orders.EmployeeID);
