SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
COUNT(nc.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS c, w3schools.customers AS nc
WHERE c.Country = nc.Country AND c.ContactName <> nc.ContactName
GROUP BY `Nome`, `País`
ORDER BY c.ContactName;
