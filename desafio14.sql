SELECT customers.country AS `País`
FROM w3schools.customers
GROUP BY customers.country
ORDER BY customers.country ASC LIMIT 5;
