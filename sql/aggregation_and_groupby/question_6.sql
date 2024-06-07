SELECT
  name,
  year,
  count(MATCH) AS no_of_matches,
  sum(score) AS runs_scored
FROM
  player_match_details
GROUP BY
  name,
  year
ORDER BY
  name ASC,
  year ASC;