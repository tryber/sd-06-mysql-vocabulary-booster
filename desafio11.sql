SELECT a.ContactName AS 'Nome',
a.Country AS 'País',
(COUNT(a.Country)-1) AS 'Número de compatriotas'
FROM w3schools.customers AS a, w3schools.customers AS b
WHERE a.Country = b.Country AND a.ContactName <> b.ContactName
GROUP BY `Nome`
ORDER BY `Nome`;
