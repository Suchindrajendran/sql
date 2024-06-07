SELECT
  user.user_id AS active_user_id,
  count(user_likes.reaction_type) AS no_of_likes
FROM
  user
  INNER JOIN user_likes ON user.user_id = user_likes.user_id
  INNER JOIN video ON user_likes.video_id = video.video_id
  INNER JOIN channel ON video.channel_id = channel.channel_id
WHERE
  channel.channel_id = 353
  AND user_likes.reaction_type LIKE "LIKE"
GROUP BY
  user.user_id
HAVING
  count(user_likes.reaction_type) >= 5
ORDER BY
  no_of_likes DESC,
  active_user_id ASC;