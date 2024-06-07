SELECT
  name,
  count(MATCH) AS no_of_matches
FROM
  player_match_details
WHERE
  year = 2012
GROUP BY
  name
ORDER BY
  no_of_matches DESC;