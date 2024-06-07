SELECT
  gender,
  sum(premium_membership) AS total_users
FROM
  user
WHERE
  premium_membership = 1
GROUP BY
  gender;