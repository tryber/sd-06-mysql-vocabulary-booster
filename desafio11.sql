SELECT cn.ContactName AS 'Nome',
cn.Country AS 'País',
COUNT(cn.Country - 1) AS 'Número de compatriotas'
FROM w3schools.customers AS cn, w3schools.customers AS p
WHERE p.Country = cn.Country
GROUP BY `Nome`
ORDER BY `Nome`;
