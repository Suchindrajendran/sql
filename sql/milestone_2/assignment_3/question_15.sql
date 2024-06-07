SELECT
  DISTINCT(channel.channel_id),
  channel.name AS channel_name
FROM
  video
  INNER JOIN channel ON video.channel_id = channel.channel_id
WHERE
  cast(
    strftime("%Y", video.published_datetime) AS integer
  ) < 2016
  AND video.name LIKE "%music%"
ORDER BY
  channel.name ASC;