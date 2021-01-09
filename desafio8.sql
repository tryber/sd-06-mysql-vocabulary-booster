select C.ContactName AS `Nome de contato`,
S.ShipperName as `Empresa que fez o envio`,
O.OrderDate as `Data do pedido`
from w3schools.customers as C
inner join w3schools.orders as O on O.CustomerID = C.CustomerID
inner join w3schools.shippers as S on S.ShipperID = O.ShipperID
where S.ShipperName = "Speedy Express" OR S.ShipperName = "United Package"
order by `Nome de contato` asc, `Empresa que fez o envio` asc, `Data do pedido` asc
