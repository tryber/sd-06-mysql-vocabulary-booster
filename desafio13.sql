SELECT p.ProductName AS 'Produto',
p.Price as 'Preço'
FROM w3schools.products as p
INNER JOIN w3schools.order_details as od
ON (SELECT od.ProductID where od.Quantity > 80) = p.ProductID
order by p.ProductName;
