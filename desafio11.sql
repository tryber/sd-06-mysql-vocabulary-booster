SELECT e1.ContactName AS `Nome`, e1.Country AS `País`, COUNT(e2.Country) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS c1
JOIN w3schools.customers AS c2 ON c1.Country = c2.Country
GROUP BY c1.CustomerID
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
