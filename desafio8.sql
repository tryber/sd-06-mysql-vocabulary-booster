SELECT customers.ContactName AS 'Nome de contato',
shippers.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers
INNER JOIN w3schools.orders
ON orders.CustomerID = customers.CustomerID
INNER JOIN w3schools.shippers
ON shippers.ShipperID = orders.ShipperID
WHERE shippers.ShipperName <> 'Federal Shipping'
ORDER BY customers.ContactName, shippers.ShipperName, orders.OrderDate;
