SELECT
  P.ProductName AS `Produto`,
  MIN(O.Quantity) AS `Mínima`,
  MAX(O.QUantity) AS `Máxima`,
  ROUND(AVG(O.Quantity), 2) AS `Média`
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS O ON O.ProductID = P.ProductID
GROUP BY P.ProductID
HAVING AVG(O.Quantity) > 20
ORDER BY Média, Produto;
