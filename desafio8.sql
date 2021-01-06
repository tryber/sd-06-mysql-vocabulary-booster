SELECT CustomerName AS "Nome de contato",
ShipperName AS "Empresa que fez o envio",
OrderDate AS "Data do pedido"
FROM w3schools.customers
JOIN w3schools.orders
ON w3schools.customers.CustomerID = w3schools.orders.CustomerID
JOIN w3schools.shippers
ON w3schools.shippers.ShipperID = w3schools.orders.ShipperID
WHERE w3schools.orders.ShipperID = 1
OR w3schools.orders.ShipperID = 2
ORDER BY CustomerName, ShipperName, OrderDate;
