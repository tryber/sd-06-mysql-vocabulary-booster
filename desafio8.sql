SELECT customers.ContactName AS `Nome de contato`,
shippers.ShipperName AS `Empresa que fez o envio`,
orders.OrderDate AS `Data do pedido` FROM customers
INNER JOIN orders ON orders.CustomerID = customers.CustomerID
INNER JOIN shippers ON shippers.ShipperID = orders.ShipperID
WHERE shippers.ShipperName <> 'Federal Shipping'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
