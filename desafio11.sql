SELECT e1.ContactName AS `Nome`, e1.Country AS `País`, COUNT(e2.Country) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS e1
JOIN w3schools.customers AS e2 ON e1.Country = e2.Country
GROUP BY e1.CustomerID
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
