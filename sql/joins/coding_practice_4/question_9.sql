SELECT
  movie_director.director_id,
  count(movie.id) AS no_of_movies,
  avg(movie.rating) AS avg_rating
FROM
  movie
  INNER JOIN movie_director ON movie.id = movie_director.movie_id
GROUP BY
  movie_director.director_id
HAVING
  avg(movie.rating) > 8
  AND count(movie_director.director_id) >= 2
ORDER BY
  no_of_movies DESC,
  director_id ASC;