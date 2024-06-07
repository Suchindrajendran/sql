SELECT
  movie_director.director_id,
  count(movie.id) AS no_of_movies_with_atleast_profit_50_cr
FROM
  movie
  INNER JOIN movie_director ON movie.id = movie_director.movie_id
GROUP BY
  movie_director.director_id
HAVING
  count(collection_in_cr - budget_in_cr) >= 2
  AND (collection_in_cr - budget_in_cr) > 50
ORDER BY
  no_of_movies_with_atleast_profit_50_cr DESC,
  movie_director.director_id ASC;