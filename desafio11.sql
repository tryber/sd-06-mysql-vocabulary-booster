SELECT
    cust.CustomerName AS 'Nome',
    cust.Country AS 'País',
    (COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers c, w3schools.customers cust
WHERE c.Country = cust.Country AND c.CustomerID != cust.CustomerID
GROUP BY cust.CustomerName
HAVING (COUNT(*) - 1) > 0
ORDER BY cust.CustomerName;
