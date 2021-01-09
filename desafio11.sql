SELECT a.ContactName AS 'Nome',
a.Country AS 'País',
(COUNT(a.Country)-1) AS 'Número de compatriotas'
FROM w3schools.customers AS a, w3schools.customers AS b
WHERE a.Country = b.Country
GROUP BY `Nome`
ORDER BY `Nome`;
