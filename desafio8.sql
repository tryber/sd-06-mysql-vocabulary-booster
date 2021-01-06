SELECT c.CustomerName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c,
w3schools.orders AS o,
w3schools.shippers AS s
WHERE o.CustomerID = c.CustomerID
AND o.ShipperID = s.ShipperID
AND o.ShipperID BETWEEN 1 AND 2
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido`;
