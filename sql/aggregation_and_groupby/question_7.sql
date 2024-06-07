SELECT
  name,
  avg(score) AS avg_score,
  sum(sixes) AS total_sixes
FROM
  player_match_details
GROUP BY
  name
HAVING
  avg_score > 50
ORDER BY
  name ASC;