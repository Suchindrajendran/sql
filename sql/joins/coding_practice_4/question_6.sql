SELECT
  movie_director.director_id AS director_id,
  count(movie_director.director_id) AS no_of_movies
FROM
  movie
  INNER JOIN movie_director ON movie_director.movie_id = movie.id
WHERE
  movie.rating > 6
GROUP BY
  movie_director.director_id
HAVING
  no_of_movies >= 2
ORDER BY
  no_of_movies DESC,
  director_id ASC;