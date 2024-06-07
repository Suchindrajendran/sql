SELECT
  name,
  sum (fours) AS no_of_fours
FROM
  player_match_details
GROUP BY
  name
ORDER BY
  no_of_fours DESC;