SELECT C.ContactName AS `Nome`,
C.Country AS `País`,
COUNT(D.Country) AS `Número de compatriotas`
FROM w3schools.customers AS C
INNER JOIN w3schools.customers AS D ON C.Country = D.Country AND C.ContactName <> D.ContactName
GROUP BY C.CustomerID
HAVING `Número de compatriotas` > 1
ORDER BY `Nome` ASC;
