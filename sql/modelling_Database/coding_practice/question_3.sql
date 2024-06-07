CREATE TABLE COMMENT(
  comment_id integer NOT NULL PRIMARY KEY,
  content text,
  commented_at datetime,
  user_id integer,
  post_id integer,
  FOREIGN KEY(user_id) REFERENCES user(id) ON DELETE CASCADE,
  FOREIGN KEY(post_id) REFERENCES post(post_id) ON DELETE CASCADE
);