SELECT
  user_likes.user_id,
  count(user_likes.reaction_type) AS no_of_reactions
FROM
  user_likes
  INNER JOIN video ON user_likes.video_id = video.video_id
  INNER JOIN channel ON video.channel_id = channel.channel_id
WHERE
  (
    user_likes.reaction_type LIKE "LIKE"
    OR user_likes.reaction_type LIKE "DISLIKE"
  )
  AND (video.channel_id = 366)
GROUP BY
  user_likes.user_id
ORDER BY
  no_of_reactions DESC,
  user_likes.user_id ASC;