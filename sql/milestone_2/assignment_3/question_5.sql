SELECT
  count(DISTINCT(country)) AS country_count
FROM
  user
WHERE
  premium_membership = 1;