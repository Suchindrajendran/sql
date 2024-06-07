SELECT
  DISTINCT(channel_id),
  (sum(duration_in_secs) / 3600.0) AS no_of_hours
FROM
  video
GROUP BY
  channel_id
ORDER BY
  no_of_hours DESC;