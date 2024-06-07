SELECT
  upper(name) AS name
FROM
  player
WHERE
  played_for_team = "SRH"
EXCEPT
SELECT
  upper(name) AS name
FROM
  player
WHERE
  NOT (played_for_team = "SRH")
ORDER BY
  name ASC;