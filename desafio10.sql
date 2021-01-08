select P.ProductName as `Produto`,
MIN(O.quantity) as `Mínima`,
MAX(O.quantity) as `Máxima`,
round(avg(O.quantity),2) as `Média`
from w3schools.products as P
inner join w3schools.order_details as O on O.ProductID = P.ProductID
group by O.ProductID
having avg(O.quantity) > 20
order by avg(O.quantity) asc,
P.ProductName asc; 
