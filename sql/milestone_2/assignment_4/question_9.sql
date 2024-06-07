SELECT
  name,
  no_of_views
FROM
  video
WHERE
  no_of_views > (
    SELECT
      avg(no_of_views)
    FROM
      video
  )
ORDER BY
  name ASC;