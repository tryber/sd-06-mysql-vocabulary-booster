SELECT C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM customers AS C, orders AS O, shippers AS S
WHERE S.ShipperName IN ('Speedy Express','United Package')
GROUP BY C.ContactName
ORDER BY C.ContactName, S.ShipperName;
