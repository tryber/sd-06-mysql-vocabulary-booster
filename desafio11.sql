SELECT D.ContactName AS `Nome`,
D.Country AS `País`,
COUNT(C.Country) AS `Número de compatriotas`
FROM w3schools.customers AS C
INNER JOIN w3schools.customers AS D ON C.Country = D.Country AND C.ContactName <> D.ContactName
GROUP BY D.CustomerID
ORDER BY `Nome` ASC;
