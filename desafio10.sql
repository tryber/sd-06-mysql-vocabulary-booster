select p.ProductName as `Produto`,
min(o.Quantity) as `Mínima`,
max(o.Quantity) as `Máxima`,
round(avg(o.Quantity), 2) as `Média`
from w3schools.products as p
inner join w3schools.order_details as o
on p.ProductID = o.ProductID
group by `Produto`
having `Média` > 20; 
