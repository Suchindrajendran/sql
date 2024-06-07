SELECT
  *
FROM
  review
  INNER JOIN course ON review.course_id = course.id;