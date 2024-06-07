SELECT
  video.name AS video_name,
  no_of_views,
  channel.name AS channel_name
FROM
  channel
  INNER JOIN video ON channel.channel_id = video.channel_id
GROUP BY
  video_name
ORDER BY
  no_of_views DESC,
  channel.name ASC
LIMIT
  10;