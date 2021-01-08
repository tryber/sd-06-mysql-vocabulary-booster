SELECT w3schools.customers.ContactName AS 'Nome de contato',
w3schools.shippers.ShipperName AS 'Empresa que fez o envio',
w3schools.orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers, w3schools.shippers, w3schools.orders

-- w3schools. = 'Speedy Express' OR United Package
WHERE w3schools.customers.CustomerID = w3schools.orders.CustomerID
AND w3schools.shippers.ShipperID = w3schools.orders.ShipperID
AND w3schools.shippers.ShipperID IN (1, 2)
ORDER BY w3schools.customers.ContactName, w3schools.shippers.ShipperName, w3schools.orders.OrderDate
--ORDER BY `Nome de Contato`, `Empresa que fez o envio`, `Data do pedido`
