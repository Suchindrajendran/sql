SELECT
  channel_id
FROM
  video
GROUP BY
  channel_id
HAVING
  count(*) >= 50
ORDER BY
  channel_id ASC;