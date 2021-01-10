SELECT C.ContactName AS 'Nome',
C.Country AS 'País',
(SELECT COUNT(customers.CustomerID) - 1 FROM customers WHERE customers.Country = C.Country) AS 'Número de compatriotas'
FROM customers AS C
WHERE (SELECT COUNT(customers.CustomerID) - 1 FROM customers WHERE customers.Country = C.Country) > 0
ORDER BY `Nome`;
