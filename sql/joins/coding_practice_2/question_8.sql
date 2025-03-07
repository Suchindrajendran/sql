SELECT
  student.full_name,
  count(student_course.course_id) AS no_of_courses
FROM
  student
  LEFT JOIN student_course ON student.id = student_course.student_id
GROUP BY
  student.id;