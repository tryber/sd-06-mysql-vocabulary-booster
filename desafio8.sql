SELECT c.contactName As `Nome de contato`,
s.shipperName As `Empresa que fez o envio`,
o.orderDate As `Data do pedido`

FROM w3schools.customers AS c

INNER JOIN w3schools.orders AS o
ON c.customerID = o.customerID

INNER JOIN w3schools.shippers AS s
ON s.shipperID = o.shipperID
WHERE s.ShipperID <> 3

ORDER BY `Nome de contato`,`Empresa que fez o envio`,`Data do pedido`;
