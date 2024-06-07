SELECT
  channel_user.channel_id,
  channel.name AS channel_name,
  count(DISTINCT(channel_user.user_id)) AS no_of_subscribers
FROM
  channel_user
  INNER JOIN channel ON channel_user.channel_id = channel.channel_id
WHERE
  strftime("%Y", channel_user.subscribed_datetime) = "2018"
GROUP BY
  channel_user.channel_id
ORDER BY
  no_of_subscribers DESC,
  channel.name ASC
LIMIT
  10;