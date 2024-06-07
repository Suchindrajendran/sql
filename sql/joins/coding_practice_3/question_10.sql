SELECT
  COMMENT.comment_id,
  COMMENT.comment_content,
  COMMENT.commented_by,
  COMMENT.commented_at
FROM
  COMMENT
WHERE
  post_id = 5
ORDER BY
  commented_at ASC;