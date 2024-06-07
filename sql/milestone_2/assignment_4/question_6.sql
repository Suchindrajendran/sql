SELECT
  channel.name AS channel_name,
  count(video.video_id) AS no_of_videos
FROM
  channel
  LEFT JOIN video ON channel.channel_id = video.channel_id
GROUP BY
  channel.name
ORDER BY
  channel.name ASC;