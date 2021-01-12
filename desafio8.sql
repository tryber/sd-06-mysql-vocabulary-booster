SELECT t_customers.ContactName AS 'Nome de contato',
t_shippers.ShipperName AS 'Empresa que fez o envio',
t_orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS t_customers
INNER JOIN w3schools.orders AS t_orders ON t_orders.CustomerID = t_customers.CustomerID
INNER JOIN w3schools.shippers AS t_shippers ON t_shippers.ShipperID = t_orders.ShipperID
WHERE t_shippers.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY t_customers.ContactName, t_shippers.ShipperName, t_orders.OrderDate;
