CREATE TABLE user_group(
  joined_at datetime,
  is_admin boolean,
  user_id integer,
  group_id integer,
  FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
  FOREIGN KEY (group_id) REFERENCES group_details(id) ON DELETE CASCADE
);