SELECT 
    customer.ContactName AS 'Nome de contato',
    shipper.ShipperName AS 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS orders
        INNER JOIN
    w3schools.customers AS customer ON orders.CustomerID = customer.CustomerID
        INNER JOIN
    w3schools.shippers AS shipper ON orders.ShipperID = shipper.ShipperID
WHERE
    shipper.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY customer.ContactName , shipper.ShipperName , orders.OrderDate;
