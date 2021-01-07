SELECT cust.ContactName AS 'Nome de contato',
  shi.ShipperName AS 'Empresa que fez o envio',
  ord.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
  INNER JOIN w3schools.customers AS cust
    ON ord.CustomerID = cust.CustomerID
  INNER JOIN w3schools.shippers AS shi
    ON ord.ShipperID = shi.ShipperID
WHERE shi.ShipperID = 1 OR shi.ShipperID = 2
ORDER BY cust.ContactName ASC,
  shi.ShipperName ASC,
  ord.OrderDate ASC;
