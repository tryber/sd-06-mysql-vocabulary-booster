SELECT
c.ContactName AS "Nome de contato",
CASE
WHEN ShipperID = 1 THEN "Speedy Express"
WHEN ShipperID = 2 THEN "United Package"
END AS "Empresa que fez o envio",
o.OrderDate AS "Data do pedido"
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.ShipperID = 1 OR o.ShipperID = 2
ORDER BY c.ContactName, `Empresa que fez o envio`, `Data do pedido`;
