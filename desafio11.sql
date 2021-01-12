SELECT
a.ContactName AS 'Nome',
a.Country AS 'País',
COUNT(b.Country) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS a
JOIN w3schools.customers AS b
ON a.Country = b.Country
GROUP BY (a.CustomerID)
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
