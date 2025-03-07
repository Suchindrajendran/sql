SELECT
  name,
  count(
    CASE
      WHEN ((cast(score AS float) / no_of_balls) * 100) < 80 THEN 1
      ELSE NULL
    END
  ) AS strike_rate_less_than_80,
  count(
    CASE
      WHEN ((cast(score AS float) / no_of_balls) * 100) > 80 THEN 1
      ELSE NULL
    END
  ) AS strike_rate_greater_than_or_equal_to_80
FROM
  player
GROUP BY
  name
ORDER BY
  name ASC;