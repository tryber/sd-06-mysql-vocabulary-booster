(SELECT Country 'País' FROM customers)
UNION
(SELECT Country 'País' FROM suppliers)
ORDER BY País
LIMIT 5;
