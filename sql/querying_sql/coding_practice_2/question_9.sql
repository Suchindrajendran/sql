SELECT
  *
FROM
  product
WHERE
  (
    (name LIKE "%Shirt")
    AND (NOT name LIKE "Black%")
  )
  AND (
    (
      brand = "Puma"
      OR brand = "Nike"
      OR brand = "Levi's"
    )
  );