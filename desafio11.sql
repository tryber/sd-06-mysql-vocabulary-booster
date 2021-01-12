SELECT C.ContactName AS 'Nome',
C.Country AS 'País',
T.Contagem - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS C
INNER JOIN (SELECT Country,
COUNT(Country) AS Contagem
FROM w3schools.customers AS CI
GROUP BY CI.Country) AS T
ON C.Country = T.Country
ORDER BY C.ContactName;
