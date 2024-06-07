SELECT
  course.name AS course_name,
  review.student_id,
  review.content
FROM
  course
  INNER JOIN review ON course.id = review.course_id
WHERE
  course.id = 15