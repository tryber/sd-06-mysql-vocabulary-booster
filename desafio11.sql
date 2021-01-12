SELECT ContactName AS `Nome`,
  g.p AS `País`,
  g.c AS `Número de compatriotas`
FROM w3schools.customers,
  (
    SELECT Country AS p,
      (COUNT(*) - 1) AS c
    FROM w3schools.customers
    GROUP BY Country
  ) AS g
WHERE Country = g.p
ORDER BY Nome;
