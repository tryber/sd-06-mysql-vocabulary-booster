SELECT DISTINCT c1.Country AS 'País'
FROM customers AS c1
    INNER JOIN suppliers AS s1
        ON s1.Country <> c1.Country
LIMIT 5;
