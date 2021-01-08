SELECT 
    o.OrderID,
    c.ContactName AS `Nome do Contato`,
    s.ShipperName AS `Empresa que fez o envio`,
    o.OrderDate AS `Data do pedido`
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.customers AS c ON o.CustomerID = c.CustomerID
        INNER JOIN
    w3schools.shippers AS s ON o.ShipperID = s.ShipperID
HAVING s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome do Contato` , `Empresa que fez o envio` , `Data do pedido`;
