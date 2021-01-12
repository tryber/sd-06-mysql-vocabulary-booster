SELECT ContactName as `Nome de contato`,
  ShipperName AS `Empresa que fez o envio`,
  OrderDate AS `Data do pedido`
FROM w3schools.customers AS c
  JOIN w3schools.orders AS o
    ON c.CustomerID = o.CustomerID
  JOIN w3schools.shippers AS s
    ON o.ShipperID  = s.ShipperID
WHERE s.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
