SELECT
  DISTINCT(director.name) AS director_name
FROM
  (
    movie
    INNER JOIN movie_director ON movie.id = movie_director.movie_id
  ) AS t
  INNER JOIN director ON t.director_id = director.id
WHERE
  movie.name LIKE "%Harry Potter%"
GROUP BY
  director.name
ORDER BY
  director.name ASC;