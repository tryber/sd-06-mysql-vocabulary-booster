SELECT C.ContactName AS `Nome de contato`,
S.ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM w3schools.orders AS O
INNER JOIN w3schools.shippers AS S ON O.ShipperID = S.ShipperID
INNER JOIN w3schools.customers AS C ON O.CustomerID = C.CustomerID
WHERE S.ShipperID IN (1, 2)
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
