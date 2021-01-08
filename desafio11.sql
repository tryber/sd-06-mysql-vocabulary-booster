SELECT t1.ContactName AS Nome,
t1.Country AS `País`,
COUNT(t2.Country) AS `Número de compatriotas`
FROM customers AS t2
INNER JOIN customers AS t1 ON t1.Country = t2.Country
AND t1.ContactName <> t2.ContactName
GROUP BY t1.CustomerID
ORDER BY Nome;
