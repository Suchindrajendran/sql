SELECT
  *
FROM
  review
  INNER JOIN student ON review.student_id = student.id;