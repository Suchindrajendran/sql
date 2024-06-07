SELECT
  video_id,
  name,
  (no_of_views / 1000.0) AS no_of_views_in_thousands
FROM
  video
ORDER BY
  no_of_views_in_thousands DESC,
  name ASC;