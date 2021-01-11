SELECT customers.contactname AS `Nome de contato`,
orders.shipperid AS `Empresa que fez o envio`,
orders.orderdate AS `Data do pedido`
FROM (w3schools.customers
INNER JOIN w3schools.orders
ON customers.customerid = orders.customerid)
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
