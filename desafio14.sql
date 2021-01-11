SELECT
    DISTINCT cust.Country AS País
FROM customers AS cust
UNION
SELECT
    DISTINCT sup.Country
FROM suppliers AS sup
ORDER BY País
LIMIT 5
