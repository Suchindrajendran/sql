SELECT
  user.name,
  user.age,
  post.post_id,
  post.content,
  post.posted_at
FROM
  post
  INNER JOIN user ON posted_by = user.user_id
ORDER BY
  post.posted_at DESC;