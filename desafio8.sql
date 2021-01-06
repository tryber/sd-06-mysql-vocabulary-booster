SELECT 
    contactname AS 'Nome de contato',
    ShipperName AS 'Empresa que fez o envio',
    OrderDate AS 'Data do pedido'
FROM
    w3schools.orders
        INNER JOIN
    w3schools.customers ON customers.customerid = orders.customerid
        INNER JOIN
    w3schools.shippers ON orders.ShipperID = shippers.ShipperID
WHERE
    ShipperName LIKE 'Speedy Express'
        OR ShipperName LIKE 'United Package'
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
