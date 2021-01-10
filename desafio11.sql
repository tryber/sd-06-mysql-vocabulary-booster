SELECT
    cust.ContactName AS 'Nome',
    cust.Country AS 'País',
    COUNT(c.Country) AS 'Número de compatriotas'
FROM w3schools.customers c, w3schools.customers cust
WHERE c.Country = cust.Country AND cust.ContactName != c.ContactName
GROUP BY cust.ContactName
ORDER BY cust.ContactName;
