SELECT
  user.user_id,
  user.name,
  post.post_id,
  post.content,
  post.posted_at,
  count(COMMENT.comment_id) AS comments_count
FROM
  (
    user
    LEFT JOIN post ON user.user_id = post.posted_by
  ) AS t
  LEFT JOIN COMMENT ON t.post_id = COMMENT.post_id
GROUP BY
  t.user_id,
  post.post_id
ORDER BY
  user.user_id ASC,
  post.post_id ASC;