SELECT
  user_likes.user_id AS potential_user_id,
  count(user_likes.reaction_type) AS no_of_likes
FROM
  user_likes
  INNER JOIN video ON user_likes.video_id = video.video_id
  INNER JOIN channel ON video.channel_id = channel.channel_id
WHERE
  channel.channel_id = 352
  AND user_likes.reaction_type LIKE "LIKE"
GROUP BY
  user_likes.user_id
HAVING
  count(user_likes.reaction_type) >= 2
EXCEPT
SELECT
  user_likes.user_id AS potential_user_id,
  count(user_likes.reaction_type) AS no_of_likes
FROM
  user_likes
  INNER JOIN video ON user_likes.video_id = video.video_id
  LEFT JOIN channel_user ON video.channel_id = channel_user.channel_id
WHERE
  channel_user.subscribed_datetime IS NULL
ORDER BY
  no_of_likes DESC,
  potential_user_id ASC;