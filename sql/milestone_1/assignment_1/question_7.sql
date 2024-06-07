SELECT
  name,
  published_datetime,
  no_of_views
FROM
  video
WHERE
  name LIKE "%esport%"
  AND no_of_views > 100000
  AND strftime("%Y", published_datetime) IN ("2018", "2019", "2020")
ORDER BY
  no_of_views DESC,
  published_datetime DESC;