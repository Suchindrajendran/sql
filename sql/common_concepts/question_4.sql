SELECT
  name,
  sum(score) AS total_score,
  CASE
    WHEN sum(score) < 100 THEN "BELOW AVERAGE"
    WHEN sum(score) >= 100
    AND sum(score) < 150 THEN "AVERAGE"
    ELSE "GOOD"
  END AS badge
FROM
  player
WHERE
  strftime("%Y", match_date) = "2006"
GROUP BY
  name
ORDER BY
  total_score DESC;