SELECT
  cast(strftime("%Y", published_datetime) AS int) AS year,
  count(DISTINCT(video_id)) AS no_of_videos
FROM
  video
GROUP BY
  strftime("%Y", published_datetime)
ORDER BY
  strftime("%Y", published_datetime) ASC