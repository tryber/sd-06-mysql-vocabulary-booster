--desafio10.sql
SELECT products.productname AS `Produto`,
MIN(order_details.quantity) AS `Mínima`,
MAX(order_details.quantity) AS `Máxima`,
ROUND(AVG(order_details.quantity),2) AS `Média`
FROM (w3schools.products
INNER JOIN w3schools.order_details
ON products.productid = order_details.productid)
GROUP BY `Produto`
HAVING Média > 20
ORDER BY `Média` ASC;