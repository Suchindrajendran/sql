SELECT
  student.full_name
FROM
  student
  LEFT JOIN student_course ON student.id = student_course.student_id
WHERE
  student_course.student_id IS NULL;