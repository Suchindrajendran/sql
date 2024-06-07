SELECT
  count(DISTINCT(country)) AS country_count
FROM
  user
  INNER JOIN channel_user ON user.user_id = channel_user.user_id
WHERE
  channel_user.channel_id = 399
  AND user.premium_membership = 1
GROUP BY
  channel_user.channel_id;