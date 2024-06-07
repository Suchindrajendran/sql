SELECT
  student.id AS student_id,
  student.full_name AS student_name,
  student_course.score,
  student_course.course_id,
  student_course.enrollment_date
FROM
  (
    student
    INNER JOIN student_course ON student.id = student_course.student_id
  ) AS t
  INNER JOIN course ON t.course_id = course.id
WHERE
  student_course.score > 70
  AND course.id = 15
  AND cast(
    strftime("%Y", student_course.enrollment_date) AS integer
  ) = 2020;