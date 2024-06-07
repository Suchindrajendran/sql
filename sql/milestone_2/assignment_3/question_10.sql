SELECT
  count(user.user_id) AS no_of_subscribers
FROM
  user
  INNER JOIN channel_user ON user.user_id = channel_user.user_id
WHERE
  channel_user.channel_id = 376
  AND (
    cast(strftime("%Y", subscribed_datetime) AS integer)
  ) = 2018;