SELECT customers.contactname AS `Nome de contato`,
shippers.shippername AS `Empresa que fez o envio`,
orders.orderdate AS `Data do pedido`
FROM ((w3schools.customers
INNER JOIN w3schools.orders
ON orders.customerid = customers.customerid)
INNER JOIN w3schools.shippers
ON orders.shipperid = shippers.shipperid)
WHERE shippers.ShipperName ='Speedy Express' or shippers.ShipperName = 'United Package'
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
