SELECT c.ContactName as "Nome de contato",
s.ShipperName as "Empresa que fez o envio",
o.OrderDate as "Data do pedido"
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers AS s
ON o.ShipperID = s.ShipperID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
