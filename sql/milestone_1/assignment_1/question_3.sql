SELECT
  name,
  channel_id,
  no_of_views
FROM
  video
GROUP BY
  published_datetime
ORDER BY
  no_of_views DESC
LIMIT
  10;