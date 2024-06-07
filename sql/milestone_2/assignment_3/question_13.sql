SELECT
  user.name,
  user.gender,
  user.age,
  user.country,
  user.premium_membership
FROM
  user
  INNER JOIN user_likes ON user.user_id = user_likes.user_id
WHERE
  user.country LIKE "INDIA"
  AND user.age < 30
  AND user_likes.video_id = 1011
  AND strftime("%Y", user_likes.reacted_at) = "2020"
  AND user_likes.reaction_type LIKE "LIKE"
ORDER BY
  user.name ASC;