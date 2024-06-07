SELECT
  cast(strftime("%H", reacted_at) AS int) AS hour_of_day,
  count(reaction_type) AS no_of_reactions
FROM
  user_likes
WHERE
  (cast(strftime("%Y", reacted_at) AS int) = 2020)
GROUP BY
  strftime("%H", reacted_at)
ORDER BY
  strftime("%H", reacted_at) ASC;