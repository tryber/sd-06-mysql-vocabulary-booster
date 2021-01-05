SELECT C.ContactName AS `Nome de contato`,
S.ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM w3schools.customers AS C,
w3schools.shippers AS S,
w3schools.orders AS O
WHERE C.CustomerID = O.CustomerID
AND S.ShipperID = O.ShipperID
AND S.ShipperName IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
