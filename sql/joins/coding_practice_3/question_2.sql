SELECT
  user.name,
  user.age,
  post.post_id,
  post.content,
  post.posted_at
FROM
  post
  INNER JOIN user ON posted_by = user.user_id
WHERE
  user.name LIKE "James Williams"
ORDER BY
  posted_at DESC
LIMIT
  5;