SELECT cust.ContactName AS 'Nome de contato',
spp.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
LEFT JOIN w3schools.customers as cust ON cust.CustomerID = ord.CustomerID
LEFT JOIN w3schools.shippers as spp ON spp.ShipperID = ord.ShipperID
WHERE spp.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY cust.ContactName, spp.ShipperName, ord.OrderDate;
