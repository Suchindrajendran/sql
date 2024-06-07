SELECT
  *
FROM
  product
WHERE
  name LIKE "%Cake"
  AND (
    brand = "Cadbury"
    OR brand = "Britannia"
  )
  AND rating > 4;