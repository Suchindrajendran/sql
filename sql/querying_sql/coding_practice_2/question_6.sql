SELECT
  *
FROM
  product
WHERE
  (
    brand = "Redmi"
    AND rating > 4
  )
  OR brand = "OnePlus";