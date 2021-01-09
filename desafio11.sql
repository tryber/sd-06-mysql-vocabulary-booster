SELECT A.CustomerName AS Nome,
A.Country AS `País`,
COUNT(B.CustomerName) AS `Número de compatriotas`
FROM w3schools.customers AS A,
w3schools.customers AS B
WHERE A.Country = B.Country AND A.CustomerName <> B.CustomerName
GROUP BY A.CustomerName
ORDER BY A.CustomerName;
