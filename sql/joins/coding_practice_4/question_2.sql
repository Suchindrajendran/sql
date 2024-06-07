SELECT
  count(movie.name) AS no_of_movies
FROM
  movie
  INNER JOIN movie_cast ON movie.id = movie_cast.movie_id
WHERE
  actor_id = 89;