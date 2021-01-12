SELECT p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM w3schools.products AS p, w3schools.order_details AS o
where p.ProductID = o.ProductID and o.Quantity > 80
order by `Produto`;
