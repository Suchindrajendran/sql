SELECT
  genre.genre_id,
  count(user_likes.reaction_type) AS no_of_likes
FROM
  genre
  INNER JOIN video_genre ON genre.genre_id = video_genre.genre_id
  INNER JOIN user_likes ON video_genre.video_id = user_likes.video_id
  INNER JOIN user ON user_likes.user_id = user.user_id
WHERE
  user.country LIKE "INDIA"
  AND user_likes.reaction_type LIKE "LIKE"
  AND cast(strftime("%Y", user_likes.reacted_at) AS integer) = 2018
GROUP BY
  genre.genre_id
ORDER BY
  no_of_likes DESC,
  genre.genre_id ASC
LIMIT
  3;