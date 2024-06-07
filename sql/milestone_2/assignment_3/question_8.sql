SELECT
  DISTINCT(channel.channel_id),
  channel.name AS channel_name
FROM
  channel
  INNER JOIN video ON channel.channel_id = video.channel_id
WHERE
  video.name LIKE "%review%"
ORDER BY
  channel.name ASC;