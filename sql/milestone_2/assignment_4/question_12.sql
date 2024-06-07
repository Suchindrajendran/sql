SELECT
  DISTINCT(
    cast(strftime("%H", user_likes.reacted_at) AS integer)
  ) AS hour_of_engagement,
  count(user_likes.reaction_type) AS no_of_likes
FROM
  video
  INNER JOIN user_likes ON video.video_id = user_likes.video_id
  INNER JOIN video_genre ON video.video_id = video_genre.video_id
WHERE
  video_genre.genre_id = 202
  AND user_likes.reaction_type LIKE "LIKE"
GROUP BY
  hour_of_engagement
ORDER BY
  no_of_likes DESC
LIMIT
  1;