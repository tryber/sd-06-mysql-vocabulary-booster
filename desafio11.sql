SELECT
cust.ContactName AS `Nome`, cust.Country AS `País`,
COUNT(p.Country) - 1 AS `Número de compatriotas`
FROM w3schools.customers cust
JOIN w3schools.customers custSelf ON custSelf.Country = cust.Country
GROUP BY cust.CustomerID
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
