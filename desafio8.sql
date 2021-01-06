SELECT cust.ContactName AS `Nome de contato`,
sh.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM w3schools.customers AS cust, w3schools.shippers AS sh, w3schools.orders AS o
WHERE o.CustomerID=cust.CustomerID AND o.ShipperID=sh.ShipperID AND sh.ShipperID IN (1,2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido` ;
