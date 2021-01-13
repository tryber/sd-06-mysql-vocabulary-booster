SELECT col_1.ContactName AS `Nome`,
col_1.Country AS `País`,
COUNT(col_2.CustomerID) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS col_1
JOIN w3schools.customers AS col_2 ON col_1.Country = col_2.Country
GROUP BY col_1.CustomerID
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
