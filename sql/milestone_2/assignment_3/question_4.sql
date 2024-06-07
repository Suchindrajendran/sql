SELECT
  name,
  no_of_views,
  cast(strftime("%Y", published_datetime) AS integer) AS year
FROM
  video
WHERE
  name LIKE "%music%"
  AND cast(strftime("%Y", published_datetime) AS integer) < 2016
ORDER BY
  cast(strftime("%Y", published_datetime) AS integer) DESC,
  name ASC;