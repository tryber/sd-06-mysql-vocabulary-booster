SELECT C.ContactName AS `Nome de contato`,
S.ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM w3schools.customers AS C
JOIN w3schools.orders AS O ON O.CustomerID = C.CustomerID
JOIN w3schools.shippers AS S ON S.ShipperID = O.ShipperID
WHERE S.ShipperID = 1 OR S.ShipperID = 2
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
