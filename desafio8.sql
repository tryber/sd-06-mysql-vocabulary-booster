select
customers.ContactName as 'Nome de contato',
shippers.ShipperName as 'Empresa que fez o envio',
orders.OrderDate as 'Data do pedido'
from w3schools.orders
inner join customers on customers.CustomerID = orders.CustomerID
inner join shippers on shippers.ShipperID = orders.ShipperID
where shippers.ShipperName = 'Speedy Express' or shippers.ShipperName = 'SUnited Package'
order by customers.ContactName asc, shippers.ShipperName asc, orders.OrderDate asc;
