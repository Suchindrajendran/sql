SELECT
  count(video.video_id) AS no_of_videos
FROM
  video
  INNER JOIN channel ON video.channel_id = channel.channel_id
WHERE
  channel.name LIKE "%News for you%"
  AND strftime("%Y", video.published_datetime) = "2018";