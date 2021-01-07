SELECT p.productName AS `Produto`, 
MIN(od.quantity) AS `Mínima`,
MAX(od.quantity) AS `Maxíma`,
ROUND(AVG(od.quantity),2) AS `Média`
From  w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON p.productID = od.productID
GROUP BY `Produto`
ORDER BY `Média`;
