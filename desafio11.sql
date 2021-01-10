SELECT
    cust.ContactName AS 'Nome',
    cust.Country AS 'País',
    (COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers cust, w3schools.customers c
WHERE cust.Country = c.Country
GROUP BY cust.ContactName
HAVING (COUNT(*) - 1) > 0
ORDER BY cust.ContactName;
