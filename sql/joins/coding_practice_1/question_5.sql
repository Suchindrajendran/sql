SELECT
  *
FROM
  course
  LEFT JOIN review ON course.id = review.course_id;