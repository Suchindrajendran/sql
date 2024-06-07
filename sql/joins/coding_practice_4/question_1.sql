SELECT
  movie.name AS movie_name,
  movie_cast.actor_id
FROM
  movie
  INNER JOIN movie_cast ON movie.id = movie_cast.movie_id
ORDER BY
  movie_name ASC,
  actor_id ASC;