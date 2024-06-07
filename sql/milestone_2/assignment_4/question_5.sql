SELECT
  cast(
    strftime("%m", channel_user.subscribed_datetime) AS integer
  ) AS month_in_2018,
  count(channel_user.user_id) AS subscribers_per_month
FROM
  channel
  INNER JOIN channel_user ON channel.channel_id = channel_user.channel_id
WHERE
  cast(
    strftime("%Y", channel_user.subscribed_datetime) AS integer
  ) = 2018
  AND channel.name LIKE "%Taylor Swift%"
GROUP BY
  cast(
    strftime("%m", channel_user.subscribed_datetime) AS integer
  )
ORDER BY
  cast(
    strftime("%m", channel_user.subscribed_datetime) AS integer
  ) ASC;