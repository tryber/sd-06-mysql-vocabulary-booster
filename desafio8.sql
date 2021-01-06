SELECT
  customers.ContactName as "Nome de contato",
  shippers.ShipperName as "Empresa que fez o envio",
  orders.OrderDate as "Data do pedido"
FROM
  w3schools.orders
  INNER JOIN w3schools.customers ON customers.CustomerID = orders.CustomerID
  INNER JOIN w3schools.shippers ON shippers.ShipperID = orders.ShipperID
WHERE
  shippers.ShipperName = "Speedy Express" OR shippers.ShipperName = "United Package"
ORDER BY
  customers.ContactName ASC,
  shippers.ShipperName ASC,
  orders.OrderDate ASC;
