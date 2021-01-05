SELECT
CustomerName AS `Nome de contato`,
OrderDate AS `Data do pedido`,
ShipperName AS `Empresa que fez o envio`
FROM order_details
INNER JOIN orders ON order_details.OrderID = orders.OrderID 
INNER JOIN customers ON orders.CustomerID = customers.CustomerID 
INNER JOIN shippers ON shippers.ShipperID = orders.ShipperID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
