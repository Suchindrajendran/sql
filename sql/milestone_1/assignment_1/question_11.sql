SELECT
  sum (premium_membership) AS premium_users_count
FROM
  user
WHERE
  premium_membership = 1