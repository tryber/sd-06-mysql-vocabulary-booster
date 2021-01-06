select
p.ProductName as `Produto`,
min(od.Quantity) as `Mínima`,
max(od.Quantity) as `Máxima`,
round(avg(od.Quantity), 2) as `Média`
from w3schools.order_details as od
inner join w3schools.products as p on od.ProductID = p.ProductID
where od.Quantity > 20
group by `Produto`
order by `Média`, `Produto`;
