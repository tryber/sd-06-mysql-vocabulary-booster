SELECT pro.ProductName AS 'Produto',
  pro.Price AS 'Preço'
FROM w3schools.orders AS ord
  INNER JOIN w3schools.order_details AS ord_d
    ON ord.OrderID = ord_d.OrderID
  INNER JOIN w3schools.products AS pro
    ON ord_d.ProductID = pro.ProductID
WHERE ord_d.Quantity > 80
ORDER BY pro.ProductName ASC;
