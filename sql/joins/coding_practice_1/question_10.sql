SELECT
  course.name
FROM
  course
  LEFT JOIN student_course ON course.id = student_course.course_id
WHERE
  student_course.course_id IS NULL;