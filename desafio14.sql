SELECT cs.Country As País
FROM w3schools.customers AS cs
UNION
SELECT su.Country As País
FROM w3schools.suppliers AS su
ORDER BY 1 LIMIT 5;
