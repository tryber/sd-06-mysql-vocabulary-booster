SELECT
c1.ContactName AS Nome,
c1.Country AS `País`,
COUNT(c1.ContactName) - 1 as `Número de compatriotas`
FROM customers AS c1
INNER JOIN customers AS c2 ON c1.Country = c2.Country
GROUP BY c1.CustomerID
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
