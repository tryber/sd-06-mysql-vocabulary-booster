SELECT
c.ContactName AS `Nome`,
c.Country AS `País`,
COUNT(c.Country) AS `Número de compatriotas`
FROM w3schools.customers AS c, w3schools.customers AS cu
WHERE c.Country = cu.Country and c.CustomerID != cu.CustomerID
GROUP BY c.CustomerID
ORDER BY `Nome`;
