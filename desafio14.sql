SELECT w3_c.Country AS País
FROM w3schools.customers as w3_c
UNION
SELECT sup.Country FROM w3schools.suppliers AS sup
ORDER BY País ASC
LIMIT 5;
