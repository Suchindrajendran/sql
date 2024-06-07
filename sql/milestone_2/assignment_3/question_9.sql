SELECT
  DISTINCT(video.video_id),
  video.name,
  video_genre.genre_id
FROM
  video
  INNER JOIN video_genre ON video.video_id = video_genre.video_id
WHERE
  video_genre.genre_id = 201
  AND video.no_of_views > 100000
GROUP BY
  video.video_id
ORDER BY
  video.video_id ASC;