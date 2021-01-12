SELECT 
tb1.ContactName AS 'Nome',
tb1.Country AS 'País',
COUNT(tb1.Country - 1) AS 'Número de compatriotas'
FROM w3schools.customers AS tb1
JOIN w3schools.customers AS tb2
WHERE tb1.Country = tb2.Country
AND tb1.ContactName <> tb2.ContactName
GROUP BY tb1.CustomerID
ORDER BY tb1.ContactName;