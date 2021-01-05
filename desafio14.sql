SELECT DISTINCT c.Country AS `País`
FROM w3schools.customers c
INNER JOIN w3schools.suppliers s ON c.Country = s.Country
LIMIT 5;
