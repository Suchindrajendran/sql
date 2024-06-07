SELECT
  DISTINCT(channel_id),
  count(*) AS videos_count
FROM
  video
GROUP BY
  channel_id;