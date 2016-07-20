DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users
(
  id SERIAL PRIMARY KEY NOT NULL,
  username varchar(90) NOT NULL,
  first_name varchar(90) NULL DEFAULT NULL,
  last_name varchar(90) NULL DEFAULT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now()
);
/*ALTER TABLE users ADD PRIMARY KEY(id);*/

DROP TABLE IF EXISTS posts;
CREATE TABLE IF NOT EXISTS posts
(
  id SERIAL PRIMARY KEY NOT NULL,
  user_id integer REFERENCES users(id),
  title varchar(180) NULL DEFAULT NULL,
  url varchar(510) NULL DEFAULT NULL,
  content text NULL DEFAULT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now()
);
/*ALTER TABLE posts ADD PRIMARY KEY(id);*/

DROP TABLE IF EXISTS comments;
CREATE TABLE IF NOT EXISTS comments
(
  id SERIAL PRIMARY KEY NOT NULL,
  user_id integer REFERENCES users(id),
  post_id integer REFERENCES posts(id),
  body varchar(510) NULL DEFAULT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now()
);
/*ALTER TABLE comments ADD PRIMARY KEY(id);*/