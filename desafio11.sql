SELECT A.ContactName AS Nome,
A.Country AS `País`,
COUNT(B.Country) - 1 AS `Número de compatriotas`
FROM customers AS B
INNER JOIN customers AS A ON A.Country = B.Country
GROUP BY A.CustomerID
HAVING `Número de compatriotas` > 1
ORDER BY Nome;
