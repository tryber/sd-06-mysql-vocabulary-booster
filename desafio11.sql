SELECT table1.ContactName AS `Nome`,
table1.Country AS `País`,
COUNT(table2.Country) AS `Número de compatriotas`
FROM customers table1, customers table2
WHERE table1.Country = table2.Country
AND table1.ContactName <> table2.ContactName
GROUP BY table1.CustomerID ORDER BY `Nome`;
