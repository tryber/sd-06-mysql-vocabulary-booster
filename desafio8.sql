SELECT cs.ContactName AS `Nome de contato`,
sh.ShipperName AS `Empresa que fez o envio`,
od.OrderDate AS `Data do pedido`
FROM w3schools.orders AS od
INNER JOIN w3schools.customers AS cs ON cs.CustomerID = od.CustomerID
INNER JOIN w3schools.shippers AS sh ON sh.ShipperID = od.ShipperID
WHERE sh.ShipperID in (1, 2)
ORDER BY 1, 2, 3;
