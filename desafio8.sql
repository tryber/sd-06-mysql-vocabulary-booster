SELECT cu.ContactName AS 'Nome de contato',
sh.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS cu
INNER JOIN w3schools.orders AS ord
ON ord.CustomerID = cu.CustomerID
INNER JOIN w3schools.shippers AS sh
ON sh.ShipperID = ord.ShipperID
WHERE sh.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
