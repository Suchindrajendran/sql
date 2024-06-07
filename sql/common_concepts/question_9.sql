SELECT
  name,
  max(score) AS highest_score,
  min(score) AS lowest_score
FROM
  player
GROUP BY
  name;