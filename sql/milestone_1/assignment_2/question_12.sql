SELECT
  channel_id
FROM
  video
WHERE
  (
    name LIKE "%AI/ML%"
    OR name LIKE "%Cyber Security%"
    OR name LIKE "%Data Science%"
    OR name LIKE "%Robotics%"
  )
  AND (
    strftime("%Y", published_datetime) BETWEEN "2018"
    AND "2021"
  )
GROUP BY
  channel_id
HAVING
  (
    count(
      name LIKE "%AI/ML%"
      OR name LIKE "%Cyber Security%"
      OR name LIKE "%Data Science%"
      OR name LIKE "%Robotics%"
    ) >= 20
  )
ORDER BY
  channel_id ASC;