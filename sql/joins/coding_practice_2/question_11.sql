SELECT
  student.id AS student_id,
  student.full_name,
  course.id AS course_id,
  course.name AS course_name,
  student_course.enrollment_date
FROM
  (
    student
    LEFT JOIN student_course ON student.id = student_course.student_id
  ) AS t
  LEFT JOIN course ON t.course_id = course.id
WHERE
  course.name LIKE "Machine Learning"
  AND strftime("%Y", enrollment_date) = "2021";