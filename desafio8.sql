SELECT CU.ContactName AS `Nome de contato`,
S.ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM orders AS O
INNER JOIN customers AS CU ON CU.CustomerID = O.CustomerID
INNER JOIN shippers AS S ON S.ShipperID = O.ShipperID
WHERE S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, S.ShipperName, O.OrderDate;
