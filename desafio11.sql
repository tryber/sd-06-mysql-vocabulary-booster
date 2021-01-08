SELECT C1.ContactName AS 'Nome', C1.Country AS 'País', COUNT(C2.Country)-1 AS 'Número de compatriotas' 
FROM w3schools.customers AS C1 INNER JOIN w3schools.customers AS C2 ON C1.Country = C2.Country
GROUP BY C1.CustomerID having  `Número de compatriotas` <> 0 ORDER BY C1.ContactName;
