SELECT
  count(content) AS posts_count
FROM
  user
  INNER JOIN post ON user.user_id = post.posted_by
WHERE
  user.name LIKE "James Williams";