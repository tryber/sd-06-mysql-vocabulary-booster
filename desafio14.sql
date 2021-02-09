SELECT Countries.Country AS País
FROM (SELECT Country FROM w3schools.suppliers
UNION SELECT Country FROM w3schools.customers
) AS Countries
GROUP BY Countries.Country
ORDER BY Countries.Country LIMIT 5;
