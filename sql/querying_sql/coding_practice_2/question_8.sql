SELECT
  *
FROM
  product
WHERE
  (
    (
      brand = "Puma"
      AND rating > 3.5
    )
    OR (
      brand = "Denim"
      AND rating > 4
    )
  );