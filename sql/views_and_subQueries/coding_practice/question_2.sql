CREATE VIEW user_order_details AS
SELECT
  user.id AS user_id,
  name,
  age,
  gender,
  pincode,
  order_id,
  total_amount
FROM
  user
  JOIN order_details;