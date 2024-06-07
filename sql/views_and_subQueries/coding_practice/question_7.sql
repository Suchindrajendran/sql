SELECT
  user_id AS customer_id,
  AVG(total_amount) AS avg_amount_spent
FROM
  location_order_details
GROUP BY
  user_id
HAVING
  AVG(total_amount) > (
    SELECT
      AVG(total_amount)
    FROM
      location_order_details
  );