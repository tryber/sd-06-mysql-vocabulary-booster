SELECT c1.ContactName 'Nome',
    c1.Country 'País',
    COUNT(c1.Country) - 1 'Número de compatriotas'
FROM customers c1
    JOIN customers c2
        ON c1.Country = c2.Country
GROUP BY c1.ContactName, c1.Country
HAVING COUNT(c1.Country) - 1 > 0
ORDER BY c1.ContactName;
