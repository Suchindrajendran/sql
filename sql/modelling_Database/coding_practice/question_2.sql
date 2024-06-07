CREATE TABLE post (
  post_id integer NOT NULL PRIMARY KEY,
  content text,
  published_at datetime,
  user_id integer,
  FOREIGN KEY(user_id) REFERENCES user(id) ON DELETE CASCADE
);