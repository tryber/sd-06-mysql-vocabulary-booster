SELECT
cust.ContactName AS `Nome de Contato`,
ship.ShipperName AS `Empresa que fez o envio`,
orders.OrderDate AS `Data do Pedido`
FROM w3schools.orders AS orders
INNER JOIN w3schools.customers AS cust
ON orders.CustomerID = cust.CustomerID
INNER JOIN w3schools.shippers AS ship
ON ship.ShipperID = orders.ShipperID
WHERE ship.ShipperName = 'Speedy Express' || ship.ShipperName = "United Package"
ORDER BY `Nome de Contato`, `Empresa que fez o envio`, `Data do Pedido`;
