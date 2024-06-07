SELECT
  channel.channel_id,
  channel.name AS channel_name,
  count(channel_user.user_id) AS no_of_subscribers
FROM
  channel
  LEFT JOIN channel_user ON channel.channel_id = channel_user.channel_id
GROUP BY
  channel.channel_id
ORDER BY
  no_of_subscribers DESC,
  channel.name ASC;