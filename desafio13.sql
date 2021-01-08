select P.ProductName as `Produto`,
P.Price as `Preço`
from w3schools.products as P
inner join w3schools.order_details as PD on PD.ProductID = P.ProductID 
where PD.Quantity > 80
order by P.ProductName asc
