SELECT
  c1.ContactName 'Nome',
  c1.Country 'País',
  (COUNT(*) - 1) 'Número de compatriotas'
FROM w3schools.customers c1
  LEFT JOIN w3schools.customers c2
   ON c1.Country = c2.Country
GROUP BY c1.ContactName, c1.Country
 HAVING COUNT(*) > 1
ORDER BY c1.ContactName;
