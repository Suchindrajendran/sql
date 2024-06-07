SELECT
  name
FROM
  player
WHERE
  played_for_team = "CSK"
UNION
SELECT
  name
FROM
  player
WHERE
  played_for_team = "MI"
UNION
SELECT
  name
FROM
  player
WHERE
  played_for_team = "SRH"
ORDER BY
  name;