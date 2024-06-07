SELECT
  count(course_id) AS no_of_courses
FROM
  student
  INNER JOIN student_course ON student.id = student_course.student_id
WHERE
  student.full_name LIKE "Ram";