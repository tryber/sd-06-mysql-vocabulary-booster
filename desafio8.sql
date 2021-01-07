SELECT
  customers.ContactName AS 'Nome de contato',
  shippers.ShipperName AS 'Empresa que fez o envio',
  orders.orderDate AS 'Data do pedido'
FROM
  w3schools.orders
INNER JOIN
  customers ON customers.CustomerID = orders.CustomerID
INNER JOIN
  shippers ON shippers.ShipperID = orders.ShipperID
WHERE
  shippers.ShipperName = 'Speedy Express' OR
  shippers.ShipperName = 'United Package'
ORDER BY
  customers.ContactName ASC,
  shippers.ShipperName ASC,
  orders.orderDate ASC;
