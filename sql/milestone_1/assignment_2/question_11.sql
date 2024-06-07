SELECT
  channel_id
FROM
  video
WHERE
  (
    name LIKE "%AI/ML%"
    OR name LIKE "%Robotics%"
  )
  AND (
    strftime("%Y", published_datetime) BETWEEN "2018"
    AND "2021"
  )
GROUP BY
  channel_id
ORDER BY
  channel_id ASC;