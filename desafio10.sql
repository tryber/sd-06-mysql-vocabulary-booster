SELECT P.ProductName AS 'Produto',
(SELECT MIN(OD.Quantity) AS 'Mínima' FROM order_details AS OD  WHERE P.ProductID = OD.ProductID) AS 'Mínima',
(SELECT MAX(OD.Quantity) AS 'Máxima' FROM order_details AS OD  WHERE P.ProductID = OD.ProductID) AS 'Máxima',
(SELECT ROUND(AVG(OD.Quantity), 2) AS 'Média' FROM order_details AS OD  WHERE P.ProductID = OD.ProductID) AS 'Média'
FROM products AS P
WHERE (SELECT ROUND(AVG(OD.Quantity), 2) AS 'Média' FROM order_details AS OD  WHERE P.ProductID = OD.ProductID) > 20.00
ORDER BY `Média`, `Produto`;
