(
  SELECT
    DISTINCT suppliers.Country as `País`
  FROM
    w3schools.suppliers
)
UNION
  (
    SELECT
      DISTINCT customers.Country as "País cus"
    FROM
      w3schools.customers
  )
order BY
  `País`
LIMIT
  5
