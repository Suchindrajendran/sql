SELECT
  cast(strftime("%m", subscribed_datetime) AS int) AS month_of_year,
  count(DISTINCT(user_id)) AS no_of_subscribers
FROM
  channel_user
WHERE
  channel_id = 351
  AND cast(strftime("%Y", subscribed_datetime) AS int) = 2020
GROUP BY
  strftime("%m", subscribed_datetime)
ORDER BY
  strftime("%m", subscribed_datetime) ASC;