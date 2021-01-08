(SELECT DISTINCT Country FROM w3schools.customers ORDER BY Country)
UNION 
(SELECT DISTINCT Country FROM w3schools.suppliers ORDER BY Country)
ORDER BY Country LIMIT 5;
