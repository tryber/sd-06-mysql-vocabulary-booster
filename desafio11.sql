SELECT
A.ContactName AS 'Nome',
A.Country AS 'País',
COUNT(B.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country
AND A.ContactName <> B.ContactName
GROUP BY A.CustomerID
ORDER BY A.ContactName;
