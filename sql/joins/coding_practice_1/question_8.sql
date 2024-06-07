SELECT
  course.name
FROM
  course
  LEFT JOIN review ON course.id = review.course_id
WHERE
  review.id IS NULL;