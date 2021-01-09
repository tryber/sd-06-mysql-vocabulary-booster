SELECT A.ContactName AS Nome,
A.Country AS `País`,
COUNT(B.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS A
INNER JOIN w3schools.customers AS B
ON A.Country = B.Country AND A.ContactName <> B.ContactName
GROUP BY Nome
ORDER BY Nome;
