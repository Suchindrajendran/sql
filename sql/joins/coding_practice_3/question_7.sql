SELECT
  post.post_id,
  post.content,
  post.posted_by,
  count(
    CASE
      WHEN reaction.reaction_type IN ("LIKE", "LIT", "WOW", "LOVE") THEN 1
      ELSE NULL
    END
  ) AS positive_reactions_count
FROM
  post
  LEFT JOIN reaction ON post.post_id = reaction.post_id
GROUP BY
  post.post_id
ORDER BY
  positive_reactions_count DESC,
  post.post_id ASC;