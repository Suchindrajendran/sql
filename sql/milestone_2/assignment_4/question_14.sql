SELECT
  user.user_id AS active_user_id,
  count(user_likes.reaction_type) AS no_of_likes
FROM
  user
  INNER JOIN user_likes ON user.user_id = user_likes.user_id
WHERE
  user_likes.reaction_type LIKE "LIKE"
GROUP BY
  user.user_id
HAVING
  count(user_likes.reaction_type) >= 50
ORDER BY
  user.user_id ASC;