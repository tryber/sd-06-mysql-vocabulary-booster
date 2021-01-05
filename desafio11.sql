SELECT customers1.ContactName AS 'Nome',
customers1.Country AS 'País',
(COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers AS customers1, w3schools.customers AS customers2
WHERE customers1.Country = customers2.Country
GROUP BY customers1.ContactName, customers1.Country HAVING (COUNT(*) - 1) > 0
ORDER BY customers1.ContactName;
