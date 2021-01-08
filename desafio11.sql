SELECT 
sup.ContactName AS 'Nome',
sup.Country AS 'País',
(COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers AS sup
LEFT JOIN w3schools.customers AS cust
ON cust.Country = sup.Country
GROUP BY sup.ContactName, sup.Country
HAVING (COUNT(*) - 1) > 0
ORDER BY sup.ContactName;
