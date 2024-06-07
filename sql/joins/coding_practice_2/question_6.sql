SELECT
  course.name AS course_name,
  count(student_course.student_id) AS no_of_students
FROM
  student_course
  INNER JOIN course ON student_course.course_id = course.id
WHERE
  course.name LIKE "Machine Learning"
  AND cast(
    strftime("%Y", student_course.enrollment_date) AS integer
  ) = 2021;