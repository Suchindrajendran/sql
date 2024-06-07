SELECT
  name,
  max(score) AS highest_score
FROM
  player
WHERE
  strftime("%Y", match_date) = "2006"
GROUP BY
  name
ORDER BY
  highest_score DESC;