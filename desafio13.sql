SELECT
    prod.ProductName AS 'Produto',
    prod.Price AS 'Preço'
FROM products AS prod
JOIN order_details AS odet
ON odet.ProductID = prod.ProductID
WHERE odet.Quantity > 80
ORDER BY prod.ProductName;
