SELECT
  s.Country 'País'
FROM w3schools.suppliers s
  UNION
    SELECT c.Country 'País'
  FROM w3schools.customers c
ORDER BY `País`
LIMIT 5;
