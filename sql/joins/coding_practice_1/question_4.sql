SELECT
  *
FROM
  review
  INNER JOIN course ON review.course_id = course.id
WHERE
  course.name LIKE "Cyber Security";