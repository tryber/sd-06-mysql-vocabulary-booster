SELECT
cust.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
JOIN w3schools.customers AS cust
ON ord.CustomerID = cust.CustomerID
JOIN w3schools.shippers AS ship
ON ship.ShipperID = ord.ShipperID
WHERE ship.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY cust.ContactName, ship.ShipperName, ord.OrderDate;
