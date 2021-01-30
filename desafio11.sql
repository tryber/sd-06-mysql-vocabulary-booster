SELECT t1.ContactName AS 'Nome', t1.Country AS 'País', COUNT(t2.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS t1, w3schools.customers AS t2
WHERE t1.ContactName <> t2.ContactName AND t1.Country = t2.Country
GROUP BY t1.CustomerID
ORDER BY t1.ContactName;
