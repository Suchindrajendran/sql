SELECT
  actor.name AS actor_name
FROM
  (
    movie
    INNER JOIN movie_cast ON movie.id = movie_cast.movie_id
  ) AS t
  INNER JOIN actor ON t.actor_id = actor.id
WHERE
  movie.name LIKE "%Harry Potter%"
GROUP BY
  actor.name
ORDER BY
  actor.name ASC;