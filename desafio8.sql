SELECT co.contactName AS 'Nome de contato',
shippers.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS co
INNER JOIN w3schools.orders
ON orders.CustomerID = co.CustomerID
INNER JOIN w3schools.shippers
ON orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperName = 'Speedy Express' OR shippers.ShipperName = 'United Package'
ORDER BY co.contactName, shippers.ShipperName, orders.OrderDate;
