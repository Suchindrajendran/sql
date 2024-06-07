SELECT
  name,
  sum(score) AS total_score
FROM
  player_match_details
GROUP BY
  name
ORDER BY
  total_score DESC;