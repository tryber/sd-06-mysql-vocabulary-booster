SELECT p.ProductName 'Produto',
p.Price 'Preço'
FROM order_details od
LEFT JOIN products p
ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY p.ProductName;
