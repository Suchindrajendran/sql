SELECT
  name,
  rating
FROM
  product
WHERE
  category LIKE "WATCH"
  AND (
    rating >(
      SELECT
        avg(rating)
      FROM
        product
      WHERE
        category LIKE "WATCH"
    )
  );