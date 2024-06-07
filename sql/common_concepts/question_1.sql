SELECT
  name,
  (sum(fours) + sum(sixes)) AS number_of_boundaries
FROM
  player
GROUP BY
  name
ORDER BY
  number_of_boundaries DESC,
  name DESC;