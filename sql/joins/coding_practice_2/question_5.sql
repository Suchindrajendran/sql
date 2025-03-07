SELECT
  student_course.student_id,
  course.name AS course_name,
  student_course.enrollment_date
FROM
  student_course
  INNER JOIN course ON student_course.course_id = course.id
WHERE
  course.name LIKE "Machine Learning"
  AND cast(
    strftime("%Y", student_course.enrollment_date) AS integer
  ) = 2021;