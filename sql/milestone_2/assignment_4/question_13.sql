SELECT
  video.name AS video_name,
  VIDEO.no_of_views AS no_of_views
FROM
  video
  INNER JOIN video_genre ON video.video_id = video_genre.video_id
WHERE
  video_genre.genre_id = 207
GROUP BY
  video.name
ORDER BY
  no_of_views DESC,
  video.name ASC
LIMIT
  5;