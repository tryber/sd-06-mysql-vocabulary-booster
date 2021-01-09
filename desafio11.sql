SELECT cn.ContactName AS 'Nome',
cn.Country AS 'País',
COUNT(cn.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS cn, w3schools.customers AS p
WHERE p.Country = cn.Country AND cn.ContactName <> p.ContactName
GROUP BY `Nome`
ORDER BY `Nome`;
