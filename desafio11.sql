SELECT CustA.ContactName AS 'Nome',
CustA.Country AS 'País',
(COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers AS CustA, w3schools.customers AS CustB
WHERE CustA.Country = CustB.Country
GROUP BY CustA.ContactName, CustA.Country
HAVING (COUNT(*) - 1) > 0
ORDER BY CustA.ContactName;
