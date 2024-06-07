SELECT
  user.user_id,
  user.name,
  post.post_id,
  post.content,
  post.posted_at,
  count(reaction.reaction_type) AS reactions_count
FROM
  (
    user
    LEFT JOIN post ON user.user_id = post.posted_by
  ) AS t
  LEFT JOIN reaction ON t.post_id = reaction.post_id
GROUP BY
  t.user_id,
  post.post_id
ORDER BY
  user.user_id ASC,
  post.post_id ASC;