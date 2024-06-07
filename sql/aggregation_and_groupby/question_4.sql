SELECT
  name,
  max(score) AS max_score
FROM
  player_match_details
GROUP BY
  name
ORDER BY
  max_score DESC;