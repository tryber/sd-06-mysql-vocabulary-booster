SELECT t_prod.ProductName AS Produto, t_prod.Price AS Preço
FROM w3schools.products AS t_prod
INNER JOIN (
 SELECT * FROM w3schools.order_details
 WHERE Quantity > 80
) AS t_orders_qty_gt_80 ON t_prod.ProductID = t_orders_qty_gt_80.ProductID
ORDER BY Produto;
