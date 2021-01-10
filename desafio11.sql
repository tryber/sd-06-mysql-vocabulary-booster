SELECT
    cust.ContactName AS 'Nome',
    cust.Country AS 'País',
    (COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers c, w3schools.customers cust
WHERE c.Country = cust.Country
GROUP BY cust.ContactName
HAVING (COUNT(*) - 1) > 0
ORDER BY cust.ContactName;
