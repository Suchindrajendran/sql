SELECT
  post.post_id,
  post.posted_by,
  post.content,
  post.posted_at,
  COMMENT.COMMENT_id,
  COMMENT.COMMENt_content,
  COMMENT.COMMENted_at
FROM
  post
  LEFT JOIN COMMENT ON post.post_id = COMMENT.post_id
WHERE
  post.posted_by = 98
ORDER BY
  post.post_id ASC,
  COMMENT.COMMENted_at DESC;