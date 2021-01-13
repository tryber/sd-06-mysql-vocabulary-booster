SELECT cs1.ContactName AS Nome,
cs1.Country AS País,
COUNT(cs2.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS cs1,
w3schools.customers AS cs2
WHERE cs1.ContactName <> cs2.ContactName AND cs1.Country = cs2.Country
GROUP BY cs1.ContactName
ORDER BY Nome;
