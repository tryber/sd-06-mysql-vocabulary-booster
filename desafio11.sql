SELECT cliente.ContactName AS 'Nome',
cliente.Country AS 'País',
(COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers AS cliente, w3schools.customers AS customers2
WHERE cliente.Country = customers2.Country
GROUP BY cliente.ContactName, cliente.Country HAVING (COUNT(*) - 1) > 0
ORDER BY cliente.ContactName;