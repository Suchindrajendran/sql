SELECT
  student.id AS student_id,
  student.full_name AS student_name,
  course.id AS course_id,
  course.name AS course_name,
  student_course.score,
  student_course.enrollment_date
FROM
  (
    student
    LEFT JOIN student_course ON student.id = student_course.student_id
  ) AS t
  LEFT JOIN course ON t.course_id = course.id;