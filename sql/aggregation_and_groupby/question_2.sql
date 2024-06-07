SELECT
  name,
  count(score) AS half_centuries
FROM
  player_match_details
WHERE
  score >= 50
GROUP BY
  name
ORDER BY
  half_centuries DESC;